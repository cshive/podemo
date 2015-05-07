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

app.controller('SearchCtrl', function($scope, $http) {
	$http.get('/organizations.json')
		.success(function(data) {
			$scope.orgs = data
		})
		.error(function(data, status) {
			alert(status)
		})

	$scope.search = function(search_params) {
		if (!search_params.name) {
			search_params.name = '';
		}
		if (!search_params.identifier) {
			search_params.identifier = '';
		}
		if (!search_params.ctep_id) {
			search_params.ctep_id = '';
		}
		$http.get('/organizations/search.json?name=' + search_params.name + '&identifier=' + search_params.identifier + '&ctep_id=' + search_params.ctep_id)
			.success(function(data) {
				$scope.orgs = data
			})
			.error(function(data, status) {
				alert(status)
			})
	}
});
