(function() {

  'use strict';

  function CausesService($http) {

    this.getCauses = function() {
      return $http.get('api/v1/causes.json')
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
    .service('CausesService', CausesService)

}());
