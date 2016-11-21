(function() {

  'use strict';

  function CausesController(causes) {

    var vm = this;
    vm.causes = causes.data;

  };

  CausesController.$inject = ['cause'];

  angular
    .module('uponnyc')
    .controller('CausesController', CausesController)


}());
