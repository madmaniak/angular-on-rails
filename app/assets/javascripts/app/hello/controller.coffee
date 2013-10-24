Hs.controller('HelloCtrl', 'App.Hello', [], '/hello',

  ($location, $rootScope, $scope) ->

    $rootScope.shared =
      name: undefined

    $scope.hi = ->
      $location.path '/hello/name'

)

.run( (access) ->
  access.provide '$rootScope.shared.name', '/hello'
)
