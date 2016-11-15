(function() {

  'use strict';

  function EventsService($http) {

    this.getEvent = function(param) {
      return $http.get('api/v1/causes/' + param.causeId + '/events/' + param.eventId + '.json')
        .then(handleSuccess)
        .catch(handleError)
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
