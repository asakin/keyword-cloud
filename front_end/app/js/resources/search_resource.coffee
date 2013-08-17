angular.module("app").factory "SearchResource", ($q, $resource) ->
  $resource('/api/V1/search')
