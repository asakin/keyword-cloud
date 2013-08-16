#angular.module("app").controller('HomeController', function($scope, $location, AuthenticationService) {
#  $scope.title = "Home";
#  $scope.message = "Mouse Over these images to see a directive at work";
#
#  var onLogoutSuccess = function(response) {
#    $location.path('/login');
#  };
#
#  $scope.logout = function() {
#    AuthenticationService.logout().success(onLogoutSuccess);
#  };
#});


angular.module('app').controller('HomeController', ($scope, $location) ->
  $scope.title = 'Home';
  $scope.message = 'Mouse over these images to see a directive at work'

)