function EventsController($window, event) {

  var vm = this;

  vm.event = event.data;
  vm.hyperlink = openHyperlink;
  vm.comments = event.included;

  function openHyperlink() {
    $window.open('http://' + event.data.attributes.url);
  };

};

EventsController.$inject = ['$window', 'event'];

angular
  .module('uponnyc')
  .controller('EventsController', EventsController)
