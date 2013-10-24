angular.module('App', ['App.NotFound', 'App.Hello'])

.config( ($routeProvider) ->
  $routeProvider.otherwise redirectTo: '/not-found'
)

.controller('AppCtrl', -> )
