angular.module('app').controller 'HomeController', ($scope, SearchResource) ->
  $scope.searchKeyword = "Bla"

  $scope.search = ->
    $scope.search_results = SearchResource.get({keyword: $scope.searchKeyword})

