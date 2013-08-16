angular.module("app").factory('AuthenticationService', function($http) {
  // these routes map to stubbed API endpoints in config/server.js
  return {
    login: function(credentials) {
      return $http.post('/api/V1/login', credentials);
    },
    logout: function() {
      return $http.post('/logout');
    }
  };
});
