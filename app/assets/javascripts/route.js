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
          url: '/:causeId',
          templateUrl: 'causes/show.html'
        })

      $urlRouterProvider.otherwise('/')
    })

}());
