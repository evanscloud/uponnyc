(function() {

  'use strict';

  angular
    .module('uponnyc')
    .config(function($stateProvider, $urlRouterProvider) {
      $stateProvider
        .state('home', {
          url: '/',
          templateUrl: 'home/home.html'
        })

      $urlRouterProvider.otherwise('/')
    })

}());
