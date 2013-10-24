Hs.controller('NameCtrl', 'App.Hello.Name', [], '/hello/name', -> )

.run( (access) ->
  access.requires ['$rootScope.shared.name'], 'NameCtrl'
)
