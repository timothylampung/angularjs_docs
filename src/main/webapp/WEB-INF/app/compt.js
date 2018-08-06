(function () {
    var app = angular.module('Compt', []);
    app.controller('ComponentController', ["$scope", "$http", '$window', 'growl', 'baseURL', '$rootScope', '$cookies', 'apiURL', 'sharedFunc', '$location',
        function ($scope, $http, $window, growl, baseURL, $rootScope, $cookies, sharedFunc) {
            console.log("PortController logged on.");


            $scope.foo = function () {
                growl.success('',{
                    title : "Hello Foo!",
                    ttl : 3000
                })
            }




        }]);
})();