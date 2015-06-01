/**
 * Created by wangg5 on 6/1/15.
 */



(function () {
    'use strict';
    angular.module('PromiseServiceModule', ['ngResource'])
        .factory('PromiseService', PromiseService);

    PromiseService.$inject = ['$http', '$q', '$resource'];

    function PromiseService($http, $q, $resource) {

        var services = {
            getData: getData,
            getDataV2: getDataV2,
            postDataExpectObj: postDataExpectObj
        };

        return services;


        /************** implementations below ************************/

        function getData(url) {
            return $http.get(url);
        }


        /**
         * Experimental only - for getting data with credentials
         *
         * @param url
         * @returns promise
         */
        function getDataV2(url) {
            return $http({
                url: url,
                method: 'GET',
                withCredentials: true,
                headers: {
                    'Content-Type': 'application/json; charset=utf-8'
                }
            });
        }


        /**
         *
         * @param url
         * @param params: JSON object
         */
        function postDataExpectObj(url, params) {
            return $http.post(url, params);
        }

    }

})();
