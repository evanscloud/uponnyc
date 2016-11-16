(function() {

  'use strict';

  function EventsController(event, $window) {

    var vm = this;
    vm.event = event.data;
    vm.hyperlink = function () {
      $window.open('http://' + event.data.attributes.url);
    };

  };

  angular
    .module('uponnyc')
    .controller('EventsController', EventsController)

}());
