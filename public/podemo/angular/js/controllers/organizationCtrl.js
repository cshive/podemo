/**
 * Created by wangg5 on 6/1/15.
 */


(function () {
    'use strict';

    angular.module('ctrpApp')
        .controller('organizationCtrl', organizationCtrl);

    organizationCtrl.$inject = ['OrgService'];

    function organizationCtrl(OrgService) {
        var vm = this;

        vm.orgList = [];
        activate();

        function activate() {
            getAllOrgs();
        } //activate




        /**************************** implementations **************************/

        function getAllOrgs() {
            OrgService.getAllOrgs()
                .then(function(data) {
                // console.log('received organizations : ' + JSON.stringify(data));
                    vm.orgList = data.data;
                }).catch(function(err) {
                    console.log('failed to retrieve organizations');
                });
        } //getAllOrgs

    }

})();