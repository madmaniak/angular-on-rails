window.Hs =
  templateUrl: (path) -> "/assets/#{path}/template.htm"

  setRoute: (path, ctrlName, provider) ->
    provider.when "/#{path}",
      controller: ctrlName,
      templateUrl: @templateUrl("app/#{path}")
