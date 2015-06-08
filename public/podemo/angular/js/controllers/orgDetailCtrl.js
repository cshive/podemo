/**
 * Created by wangg5 on 6/1/15.
 */

(function () {
    'use strict';

    angular.module('ctrpApp')
        .controller('orgDetailCtrl', orgDetailCtrl);

    orgDetailCtrl.$inject = ['$stateParams', 'orgDetailObj', 'LocalCacheService'];

    function orgDetailCtrl($stateParams, orgDetailObj, LocalCacheService) {

        var vm = this;
        vm.curOrg = orgDetailObj.data;
        // console.log('received orgDetailObj: ' + JSON.stringify(orgDetailObj));
    }


})();