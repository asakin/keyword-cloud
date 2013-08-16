angular.module('app').controller('HomeController', (($scope, $location) ->
  $scope.search = ->
    console.log("Clicked on Search")
))
