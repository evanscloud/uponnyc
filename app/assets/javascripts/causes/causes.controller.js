function CausesController(causes) {

  var vm = this;
  vm.causes = causes.data;

};

CausesController.$inject = ['causes'];

angular
  .module('uponnyc')
  .controller('CausesController', CausesController)
