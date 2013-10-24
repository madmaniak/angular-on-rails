window.Hs =
  templateUrl: (path) -> "/assets#{path}/template.htm"

  setRoute: (path, ctrlName, provider) ->
    provider.when "#{path}",
      controller: ctrlName,
      templateUrl: @templateUrl("/app#{path}")

  controller: (name, module, deps, path, body) ->

    angular.module(module, deps)

    .config( ($routeProvider) ->
      Hs.setRoute path, name, $routeProvider
    )

    .controller( name, body )
