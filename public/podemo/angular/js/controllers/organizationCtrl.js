/**
 * Created by wangg5 on 6/1/15.
 */


(function () {
    'use strict';

    angular.module('ctrpApp')
        .controller('organizationCtrl', organizationCtrl);

    organizationCtrl.$inject = ['PromiseService', 'URL_CONFIGS'];

    function organizationCtrl(PromiseService, URL_CONFIGS) {
        var vm = this;

        vm.orgList = [];
        activate();

        function activate() {
            getAllOrgs();
        } //activate




        /****************** implementations ******************/

        function getAllOrgs() {
            PromiseService.getData(URL_CONFIGS.ORG_LIST)
                .then(function(data) {
                    console.log('received organizations : ' + JSON.stringify(data));
                    vm.orgList = data.data;
                }).catch(function(err) {
                    console.log('failed to retrieve organizations');
                });
        }

    }

})();