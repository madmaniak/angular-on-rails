angular.module('App.Hello.Name', [])

.config( ($routeProvider) ->
  Hs.setRoute 'hello/name', 'NameCtrl', $routeProvider
)

.run( (access) ->
  access.requires ['$rootScope.shared.name'], 'NameCtrl'
)

.controller('NameCtrl', -> )
