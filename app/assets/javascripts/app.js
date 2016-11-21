angular
  .module('uponnyc', ['ui.router', 'templates', 'angularMoment'])
  .config(['$httpProvider', function($httpProvider) {
          // for CSRF errors
          $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
      }])
