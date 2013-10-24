angular.module('App.Hello', [])

.config( ($routeProvider) ->
  Hs.setRoute 'hello', 'HelloCtrl', $routeProvider
)

.controller('HelloCtrl', ($scope) ->
  $scope.hello = 'Hello Angular!'
)
