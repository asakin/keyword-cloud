angular.module('app').controller 'HomeController', ($scope, SearchResource) ->
  $scope.search = ->
    $scope.search_results = SearchResource.get()

