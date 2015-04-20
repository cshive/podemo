  angular.module('poDemo', [])
    .controller('OrgCtrl', ['$scope', '$http', '$location', '$window', function($scope, $http, $location, $window) {

    $scope.param = $location.search()["id"];

    var config = {headers: {
            'Accept': 'application/json;',
            'csrftoken2': 'BYnHh5flBeMvyRIOsDY252sKoarnbuCk'
        }
    };	
	
	
	$scope.org = {};
	$scope.payload = {};
	$scope.selectedOrgType = null;
	$scope.orgTypes = [];
	$scope.selectedOrgStatus = null;
	$scope.orgStatuses = [];	
    
	$scope.load = function(){
/*
	  $http.get('http://localhost/podemo/orgtypes/').
		success(function(data, status, headers, config) {
		  $scope.orgTypes = data;
		}).
		error(function(data, status, headers, config) {
		  // log error
		});	
	  $http.get('http://localhost/podemo/orgstatuses/').
		success(function(data, status, headers, config) {
		  $scope.orgStatuses = data;
		}).
		error(function(data, status, headers, config) {
		  // log error
		});		
*/
	  $http.get('/organizations/' + $scope.param + '.json').
		success(function(data, status, headers, config) {
		  $scope.org = data;
		  $scope.selectedOrgType = $scope.org.orgType;		
		  $scope.selectedOrgStatus = $scope.org.orgStatus;				  
		//alert($scope.selectedOrgType.id)		  

		}).
		error(function(data, status, headers, config, window) {
			if(status == '401'){
				//$window.location.href = 'http://localhost/poDemo/login/auth'
			}
			else{
				return true;
			}
		});
	}	  
	$scope.load();  
	
      $scope.update = function(org) {
        $scope.payload = angular.copy(org);
      };

      $scope.reset = function(data) {	
        $scope.load();
      };
	  

	$scope.postit = function(org){

        var config = {headers: {
            'Accept': 'application/json;'
            //,'csrftoken2': 'BYnHh5flBeMvyRIOsDY252sKoarnbuCk'
        }
        };

		$scope.postedpayload = angular.copy(org);
        if (org.id) {
		    $http.put("/organizations/" + org.id + ".json", org)
				.success(function(resp, status) {
					$scope.remoteresponse = status;
				})
				.error(function(resp, status) {
					for (var key in resp) {
						if (resp.hasOwnProperty(key)) {
							alert(key + " " + resp[key]);
						}
					}
					$scope.remoteresponse = status;
				});
        } else {
            $http.post("/organizations.json", org)
				.success(function(resp, status) {
					$scope.remoteresponse = status;
				})
				.error(function(resp, status) {
					for (var key in resp) {
						if (resp.hasOwnProperty(key)) {
							alert(key + " " + resp[key]);
						}
					}
					$scope.remoteresponse = status;
				});
        }
	}
}]);
