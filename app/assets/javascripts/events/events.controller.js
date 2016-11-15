(function() {

  'use strict';

  function EventsController(event) {

    var vm = this;
    vm.event = event.data;

  };

  angular
    .module('uponnyc')
    .controller('EventsController', EventsController)


}());
