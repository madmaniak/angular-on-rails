angular.module('App.Hello', [])

.config( ($routeProvider) ->
  $routeProvider.when '/hello',
    controller: 'HelloCtrl',
    templateUrl: 'assets/app/hello/template.htm'
)

.controller('HelloCtrl', ($scope) ->
  $scope.hello = 'Hello Angular!'
)
