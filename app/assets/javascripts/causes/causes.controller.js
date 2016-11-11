(function() {

  'use strict';

  function CausesController(causes) {

    var vm = this;
    vm.causes = causes.data;
  };

  angular
    .module('uponnyc')
    .controller('CausesController', CausesController)


}());
