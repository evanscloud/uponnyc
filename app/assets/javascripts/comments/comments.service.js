(function() {

  'use strict';

  function CommentsService($http) {

    this.newComment = function(params, commentData) {
      return $http.post('/api/v1/events/' + params.eventId + '/comments.json', commentData)
      .then(showComment)
    };

    function showComment() {
      document.location.reload(true);
    };

    function handleSuccess(response) {
      console.log(response);
      return response.data;
    };

    function handleError(error) {
      console.log(error);
    };

  };

  CommentsService.$inject = ['$http'];

  angular
    .module('uponnyc')
    .service('CommentsService', CommentsService)

}());
