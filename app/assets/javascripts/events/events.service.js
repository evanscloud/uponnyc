(function() {

  'use strict';

  function EventsService($http, $state) {

    this.getEvent = function(param) {
      return $http.get('api/v1/causes/' + param.causeId + '/events/' + param.eventId + '.json')
        .then(handleSuccess)
        .catch(handleError)
    };

    this.newEvent = function(cause, eventData) {
      return $http.post('api/v1/causes/' + cause.id  + '/events.json', eventData)
        .then(showCause(cause))
    };

    function showCause(cause) {
      $state.go('causes.show', { id: cause.id });
    };

    function handleSuccess(response) {
      console.log(response);
      return response.data;
    };

    function handleError(error) {
      console.log(error);
    };
  };

  angular
    .module('uponnyc')
    .service('EventsService', EventsService)

}());
