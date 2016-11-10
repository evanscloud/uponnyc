(function() {

  'use strict';

  function HomeController($scope, $location) {
    $scope.go = function(path) {
      $location.path(path);
    };
  };

  angular
    .module('uponnyc')
    .controller('HomeController', HomeController)

}());
