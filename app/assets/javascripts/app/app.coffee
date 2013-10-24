angular.module('App', [
  'Common',
  'App.NotFound', 'App.Hello', 'App.Hello.Name',
])

.config( ($locationProvider, $routeProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.otherwise redirectTo: '/not-found'
)

.controller('AppCtrl', -> )
