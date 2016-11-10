(function() {

  'use strict';

  angular
    .module('uponnyc')
    .config(function($stateProvider, $urlRouterProvider) {
      $stateProvider
        .state('home', {
          url: '/',
          templateUrl: 'home/home.html',
          controller: 'HomeController as vm'
        })
      $stateProvider
        .state('causes', {
          url: '/causes',
          templateUrl: 'causes/causes.html'
        })


      $urlRouterProvider.otherwise('/')
    })

}());
