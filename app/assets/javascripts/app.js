(function() {
  
  'use strict';


  angular
    .module('uponnyc', ['ui.router', 'templates'])
    .config(function($httpProvider) {
            // for CSRF errors
            $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
        })

}());
