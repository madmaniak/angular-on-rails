angular.module('App', ['App.NotFound', 'App.Hello'])

.config( ($locationProvider, $routeProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.otherwise redirectTo: '/not-found'
)

.controller('AppCtrl', -> )
