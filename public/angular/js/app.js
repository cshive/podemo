var app = angular.module("poDemo", []);

var config = {headers: {
	//'WWW-Authenticate': 'XXX;'
    'Accept': 'application/json;'

	}
};	
app.controller("OrgCtrl", function($scope, $http, $window) {
  $http.get('/organizations.json').
    success(function(data, status, headers, config) {
		$http.get('/organizations.json').
		success(function(data, status, headers, config) {
		//	alert(status)
			$scope.orgs = data;
		}).
		error(function(data, status, headers, config, window) {
		alert(status + "1")
		//$window.location.href = 'http://localhost/poDemo/login/auth'
		});
    }).
    error(function(data, status, headers, config, window) {
	alert(status + "2")
      //$window.location.href = 'http://localhost/poDemo/login/auth'
    });
	
	
	
	
});

