angular.module('App.Hello', [])

.config( ($routeProvider) ->
  Hs.setRoute 'hello', 'HelloCtrl', $routeProvider
)

.run( (access) ->
  access.provide '$rootScope.shared.name', '/hello'
)

.controller('HelloCtrl', ($location, $rootScope, $scope) ->
  $rootScope.shared =
    name: undefined

  $scope.hi = ->
    $location.path '/hello/name'

)
