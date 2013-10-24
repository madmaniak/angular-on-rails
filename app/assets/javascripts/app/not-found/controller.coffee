angular.module('App.NotFound', [])

.config( ($routeProvider) ->
  $routeProvider.when '/not-found',
    controller: 'NotFoundCtrl',
    templateUrl: 'assets/app/not-found/template.htm'
)

.controller('NotFoundCtrl', -> )
