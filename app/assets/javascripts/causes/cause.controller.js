(function() {

  'use strict';

  function CauseController(cause) {

    var vm = this;
    vm.events = cause.included;

  };

  angular
    .module('uponnyc')
    .controller('CauseController', CauseController)


}());
