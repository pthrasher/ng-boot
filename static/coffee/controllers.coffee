class RootCtrl
    constructor: ($scope, $log) ->
        $log.log 'RootCtrl reporting in.'

        $scope.content = 'Hello there!'

        return


angular.module('App.controllers', [])
    .controller('RootCtrl', RootCtrl)

angular.module('App', [
    'App.services'
    'App.filters'
    'App.directives'
    'App.controllers'
])
