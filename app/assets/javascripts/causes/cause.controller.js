(function() {

  'use strict';

  function CauseController(cause) {

    var vm = this;
    vm.cause = cause.data;
    vm.events = cause.included;

  };

  angular
    .module('uponnyc')
    .controller('CauseController', CauseController)


}());
