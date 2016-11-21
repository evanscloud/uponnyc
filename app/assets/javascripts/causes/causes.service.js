function CausesService($http) {

  this.getCauses = function() {
    return $http.get('api/v1/causes.json')
      .then(handleSuccess)
      .catch(handleError)
  };

  this.getCause = function(cause) {
    return $http.get('api/v1/causes/' + cause.id + '.json')
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

CausesService.$inject = ['$http'];

angular
  .module('uponnyc')
  .service('CausesService', CausesService)
