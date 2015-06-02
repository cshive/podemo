/**
 * Created by wangg5 on 6/1/15.
 */

(function () {
    'use strict';

    angular.module('ctrpApp')
        .controller('orgDetailCtrl', orgDetailCtrl);

    orgDetailCtrl.$inject = ['$stateParams', 'orgDetailObj'];

    function orgDetailCtrl($stateParams, orgDetailObj) {

        var vm = this;
        vm.curOrg = orgDetailObj.data;

        console.log('received orgDetailObj: ' + JSON.stringify(orgDetailObj));

    }


})();