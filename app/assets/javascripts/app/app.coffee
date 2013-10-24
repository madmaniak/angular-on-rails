angular.module('App', [
  'Common',
  'App.NotFound', 'App.Hello', 'App.Hello.Name',
])

.config( ($locationProvider, $routeProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.otherwise redirectTo: '/not-found'
)

.run( (access) ->
  access.watch()
)

.controller('AppCtrl', -> )
