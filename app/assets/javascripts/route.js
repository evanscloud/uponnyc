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
        .state('causes', {
          url: '/causes',
          templateUrl: 'causes/index.html',
          controller: 'CausesController as vm',
          resolve: {
            causes: function(CausesService) {
              return CausesService.getCauses();
            }
          }
        })
        .state('causes.show', {
          url: '/:id',
          templateUrl: 'causes/show.html',
          controller: 'CauseController as vm',
          resolve: {
            cause: function($stateParams, CausesService) {
              return CausesService.getCause($stateParams);
            }
          }
        })

      $urlRouterProvider.otherwise('/')
    })

}());
