angular.module('App.NotFound', [])

.config( ($routeProvider) ->
  Hs.setRoute 'not-found', 'NotFoundCtrl', $routeProvider
)

.controller('NotFoundCtrl', -> )
