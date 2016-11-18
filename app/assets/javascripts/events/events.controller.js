(function() {

  'use strict';

  function EventsController($window, event) {

    var vm = this;

    vm.event = event.data;
    vm.hyperlink = openHyperlink;


    function openHyperlink() {
      $window.open('http://' + event.data.attributes.url);
    };

  };

  angular
    .module('uponnyc')
    .controller('EventsController', EventsController)

}());
