(function() {
  var RootCtrl;

  RootCtrl = function($scope, $log) {
    $log.log('RootCtrl reporting in.');
    $scope.content = 'Hello there!';
  };

  angular.module('App.controllers', []).controller('RootCtrl', ['$scope', '$log', RootCtrl]);

  angular.module('App', ['App.services', 'App.filters', 'App.directives', 'App.controllers']);

}).call(this);
