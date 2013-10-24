angular.module('App.Hello.Name', [])

.config( ($routeProvider) ->
  Hs.setRoute 'hello/name', 'NameCtrl', $routeProvider
)

.controller('NameCtrl', -> )
