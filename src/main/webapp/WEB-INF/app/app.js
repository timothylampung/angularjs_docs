(function () {
    var app = angular.module('Tutorial',
        [
            'angular-growl',
            'ngCookies',
            'ngSanitize',
            'naif.base64',
            'datatables',
            'angularDateTimePicker',
            'datehandler',
            'angularMoment',
            'Compt'
        ]);


    //Declaring a service to fetch the base URL of the application - Firdhaus, 03/05/17
    app.factory('baseURL', ['$window', '$location', function ($window, $location) {
         return "http://localhost:8080/UI_COMPONENT";
//           return "http://bitmmdis.ddns.net:8080/MMDIS"


    }]);

    app.factory('apiURL', ['$window', '$location', function ($window, $location) {
            return "http://localhost:8080/MMDIS_API";
//        return "http://bitmmdis.ddns.net:8080/MMDIS_API_DEV";

    }]);


    app.directive('ngConfirmClick', [function () {
        return {
            link: function (scope, element, attr) {
                var msg = attr.ngConfirmClick || "Are you sure?";
                var clickAction = attr.confirmedClick;
                element.bind('click', function (event) {
                    if (window.confirm(msg)) {
                        scope.$eval(clickAction);
                    }
                });
            }
        };
    }]);


    app.factory('sharedFunc', ['$http','apiURL','growl','$q','$rootScope', function ($http,apiURL,growl,$q,$rootScope) {
        return {
            queryString: function (param, path) {
                var sPageURL = path || window.location.search.substring(1),
                    sURLVariables = sPageURL.split(/[&||?]/),
                    res;

                for (var i = 0; i < sURLVariables.length; i += 1) {
                    var paramName = sURLVariables[i],
                        sParameterName = (paramName || '').split('=');

                    if (sParameterName[0] === param) {
                        res = sParameterName[1];
                    }
                }
                return res;
            },

            ssmApiKey: function () {
                return 'eyJpc3MiOiJodHRwczovL2p3dC1pZHFz';
            },

            func2: function () {
                alert("I'm func2!");
            },

            isUndefinedOrNull: function (obj) {
                return !angular.isDefined(obj) || obj === null;
            },
            isEmpty: function (str) {
                if (str === undefined || str === null || str === '' || str === '-' || str === ' ' || str.length === 0 || str === "null") {
                    return true;
                } else {
                    return false;
                }
            },
            parseDate: function (strDate) {
                return new Date(strDate);
            },
            formatTime: function (strTime) {
                return new Date(strTime).getHours() + ":" + new Date(strTime).getMinutes() + ":" + new Date(strTime).getSeconds();
            },
            getHourList: function () {
                var hourList = [];
                for (var i = 0; i < 24; i++) {
                    hourList.push(('0' + i).slice(-2));
                }
                return hourList;
            },
            getMinuteList: function () {
                var minuteList = [];
                for (var i = 0; i < 60; i++) {
                    minuteList.push(('0' + i).slice(-2));
                }
                return minuteList;
            },
            openReport: function (url, data) {
                var form = document.createElement("form");
                form.action = url;
                form.method = 'POST';
                form.target = "_blank";
                if (data) {
                    for (var key in data) {
                        var input = document.createElement("textarea");
                        input.name = key;
                        input.value = typeof data[key] === "object" ? JSON.stringify(data[key]) : data[key];
                        form.appendChild(input);
                    }
                }

                var xinput = document.createElement("textarea");
                xinput.name = "secureToken";
                xinput.value = $http.defaults.headers.common["X-Auth-Token"];
                form.appendChild(xinput);

                form.style.display = 'none';
                document.body.appendChild(form);
                form.submit();
            },
            dateIsExpired : function(inputDate){
                var a = new Date(inputDate);
                var b = new Date();
                return a > b;
            },
            dateIsEqual : function(a,b){

            },
            dateIsBefore : function(){},
            httpPOST : function(url, requestBody, successMsg){ //In case for maintenance and code cleanup, FUTURE_USE
                var promises = $q.defer();
                $rootScope.spinnerShow = true;
                console.log(successMsg);
                var showGrowl = false;
                if(successMsg!==undefined){
                    showGrowl = true;
                }
                console.log(showGrowl);
                $http({
                    method: 'POST',
                    url: apiURL + url,
                    data: JSON.stringify(requestBody),
                    headers: {
                        'Content-Type': 'application/json; charset=utf-8'
                    }
                }).then(function onSuccess(response) {
                    var res = response.data;
                    console.log(res)
                    if (res.Success) {
                        console.log(res);
                        $rootScope.spinnerShow = false;
                        if (showGrowl) {
                            growl.success(successMsg, {
                                title: 'SUCCESS!',
                                ttl: 10000
                            });
                        }
                        return promises.resolve(res);
                    } else {
                        $rootScope.spinnerShow = false;
                        console.log(res);
                            growl.error(res.Message, {
                                title: 'ERROR!'
                            });
                        return promises.reject(res);
                    }
                })
                    .catch(function onError(error) {

                        console.log(error);
                        $rootScope.spinnerShow = false;
                        growl.error("Error : "+error.status, {
                            title: 'ERROR!'
                        });
                        return promises.reject(error);
                    });

                return promises.promise;

            }, //In case for maintenance and code cleanup, FUTURE_USE (Can See usage at maklumat_perjawatan.js);
            httpGET : function(url,successMsg){ //In case for maintenance and code cleanup, FUTURE_USE (Can See usage at maklumat_perjawatan.js);
                var promises = $q.defer();
                var showGrowl = false;
                $rootScope.spinnerShow = true;
                if(successMsg!==undefined){
                    showGrowl =true;
                }
                console.log(showGrowl);
                $http({
                    method: 'GET',
                    url: apiURL + url
                }).then(function onSuccess(response) {
                    var res = response.data;
                    console.log(response);
                    if (res.Success) {
                        console.log(res);
                        $rootScope.spinnerShow = false;
                        if (showGrowl) {
                            growl.success(successMsg, {
                                title: 'SUCCESS!',
                                ttl: 10000
                            });
                        }
                        return promises.resolve(res);
                    } else {
                        if (res.Message !== null) {
                            $rootScope.spinnerShow = false;
                            growl.error(res.Message, {
                                title: 'ERROR!'
                            });
                            return promises.reject(res);
                        }
                    }
                })
                    .catch(function onError(error) {
                        console.log(error);
                        $rootScope.spinnerShow = false;
                        growl.error("Error : "+error.status, {
                            title: 'ERROR!'
                        });
                        return promises.reject(error);
                    });
                return promises.promise;

            }, //In case for maintenance and code cleanup, FUTURE_USE (Can See usage at maklumat_perjawatan.js);

            //General Status
            GSTS_PENDING : 1,
            GSTS_VERIFIED : 2,
            GSTS_VERIFIED2 : 3,
            GSTS_APPROVED : 4,
            GSTS_APPROVED2 : 5,
            GSTS_REJECTED : 6,
            GSTS_EXPIRED : 7,
            GSTS_SUSPENDED : 8,
            GSTS_TERMINATED : 9,
            GSTS_DELETED : 10,
            GSTS_BLACKLISTED : 11,
            GSTS_AMENDED : 12,
            GSTS_ACCEPTED : 13,
            GSTS_ONGOING : 14,
            GSTS_NEW : 15,
            GSTS_OPENED : 16,
            GSTS_CLOSED : 17,
            GSTS_OPERATION_APPROVAL : 18,
            GSTS_PROVISIONAL : 19,
            GSTS_FULL_TERM : 20,
            GSTS_ACTIVE : 21,
            GSTS_INACTIVE : 22,
            GSTS_SIGNED_ON : 23,
            GSTS_SIGNED_OFF : 24,
            GSTS_VALID : 25,
            GSTS_INVALID : 26,
            GSTS_REVIEWED : 27,
            GSTS_KEEP_IN_VIEW : 28,
            GSTS_LOCAL : 29,
            GSTS_FOREIGN : 30,
            GSTS_RENEW : 31,
            GSTS_LOST_REPLACEMENT : 32,
            GSTS_DAMAGE_REPLACEMENT : 33,
            GSTS_PAID : 34,
            GSTS_UNPAID : 35,
            GSTS_IN_USE : 36,
            GSTS_NOT_IN_USE : 37,
            GSTS_ESTIMATED : 38,
            GSTS_ARRIVED : 39,
            GSTS_CANCELED : 40,
            GSTS_DECLARED : 41,
            GSTS_DEPARTED : 42,
            GSTS_ASSIGNED : 43,
            GSTS_INSPECTED : 44,
            GSTS_NOT_ASSIGNED : 45,
            GSTS_UNDER_INSPECTION : 46,
            GSTS_COMPLETED : 47,
            GSTS_RETURNED : 48,
            GSTS_AVAILABLE : 49,
            GSTS_NOT_AVAILABLE : 50,
            
            //Workflow Status
            WORKFLOW_PENDING : 1,
            WORKFLOW_COMPLETED : 2,
            WORKFLOW_CANCELLED : 3,
            WORKFLOW_REJECTED : 4,
            WORKFLOW_RETURNED : 5,

            //Vessel Status
            VSTS_NEW : 1,
            VSTS_ACTIVE1 : 2,
            VSTS_ACTIVE2 : 3,
            VSTS_EXPIRED : 4,
            VSTS_SUSPENDED : 5,
            VSTS_TERMINATED : 6,
            VSTS_DELETED : 7,
            VSTS_BLACKLISTED : 8,
            VSTS_REJECTED : 9
        };
    }]);


})();