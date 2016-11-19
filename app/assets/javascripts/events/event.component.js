(function() {

  'use strict';

  var newEvent = {
    transclude: true,
    templateUrl: 'events/form.html',
    controller: NewEventController
  };

  function NewEventController($stateParams, $state, EventsService) {

    var ctrl = this;
    ctrl.postEvent = postEvent;


    function postEvent() {
      return EventsService.newEvent($stateParams, ctrl.event);
    };

  };

  angular
    .module('uponnyc')
    .component('newEvent', newEvent)

}());