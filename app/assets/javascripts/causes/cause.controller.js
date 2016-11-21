(function() {

  'use strict';

  function CauseController($scope, cause) {

    var vm = this;
    vm.cause = cause.data;
    vm.events = cause.included;
    $scope.orderList = "attributes.title";

  };

  CauseController.$inject = ['$scope', 'cause'];

  angular
    .module('uponnyc')
    .controller('CauseController', CauseController)


}());
