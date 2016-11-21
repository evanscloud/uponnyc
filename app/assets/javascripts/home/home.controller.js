function HomeController($scope, $location) {
  $scope.go = function(path) {
    $location.path(path);
  };
};

HomeController.$inject = ['$scope', '$location'];

angular
  .module('uponnyc')
  .controller('HomeController', HomeController)
