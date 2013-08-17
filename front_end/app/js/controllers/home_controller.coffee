angular.module('app').controller('HomeController', (($scope, $location) ->
  $scope.search = ->
    console.log($scope.this_is_cool)
))
