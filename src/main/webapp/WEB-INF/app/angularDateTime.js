(function () {
    var app = angular.module('angularDateTimePicker', []);

    app.controller('DateTimePickerController', ["$scope", "$http", '$window', 'growl', 'apiURL', '$rootScope', '$cookies', 'baseURL', '$location', '$timeout', function ($scope, $http, $window, growl, apiURL, $rootScope, $cookies, baseURL, $location, $timeout) {
            console.log("DateTimePickerController logged on.");

            var vm = this;
            
            vm.optionsDate = {format: 'DD/MM/YYYY'};
            vm.optionsDate2 = {format: 'DD/MM/YYYY'};
            vm.optionsDate3 = {format: 'DD/MM/YYYY'};
            vm.optionsTime = {format: 'LT'};
            vm.optionsDateTime = {format: 'DD/MM/YYYY  LT'};

            vm.getTime = function () {
                alert('Selected time is:' + vm.date.format('DD/MM/YYYY'));
            };

            vm.addTime = function (val, selector) {
                vm.date = moment(vm.date.add(val, selector));
            };

            vm.clearTime = function () {
                vm.date = undefined;
            };

        }]);

})();

