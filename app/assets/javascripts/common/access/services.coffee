angular.module('Access', [])

.factory('existence', ($rootScope) ->
  check: (resource) ->
    try
      eval(resource)?
    catch error
      return false
)

.factory('access', ( $rootScope, $location, existence ) ->

  providers = {}
  requirements = {}

  watch: ->
    $rootScope.$on("$routeChangeStart", (event, next, current) ->

      ctrl = next.controller
      resources = requirements[ctrl]

      if resources
        for resource in resources
          path = providers[resource]
          unless existence.check resource
            $location.path path
            break

    )

  provide: (resource, path) -> providers[resource] = path

  requires: (resources, ctrl) -> requirements[ctrl] = resources

)
