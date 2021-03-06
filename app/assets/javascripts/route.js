angular
  .module('uponnyc')
  .config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
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
          causes: ['CausesService', function(CausesService) {
            return CausesService.getCauses();
          }
        ]}
      })
      .state('causes.show', {
        url: '/:id/events',
        templateUrl: 'causes/show.html',
        controller: 'CauseController as vm',
        resolve: {
          cause: ['$stateParams', 'CausesService', function($stateParams, CausesService) {
            return CausesService.getCause($stateParams);
          }
        ]}
      })
      .state('causes.new', {
        url: '/:id/events/new',
        templateUrl: 'events/new.html'
      })
      .state('causes.event', {
        url: '/:causeId/events/:eventId',
        templateUrl: 'events/show.html',
        controller: 'EventsController as vm',
        resolve: {
          event: ['$stateParams', 'EventsService', function($stateParams, EventsService) {
            return EventsService.getEvent($stateParams);
          }
        ]}
      })

    $urlRouterProvider.otherwise('/')
  }])
