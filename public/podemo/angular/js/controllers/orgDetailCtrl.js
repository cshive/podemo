/**
 * Created by wangg5 on 6/1/15.
 */

(function () {
    'use strict';

    angular.module('ctrpApp')
        .controller('orgDetailCtrl', orgDetailCtrl);

    orgDetailCtrl.$inject = ['$stateParams', 'orgDetailObj', 'OrgService', 'toastr'];

    function orgDetailCtrl($stateParams, orgDetailObj, OrgService, toastr) {

        var vm = this;
        vm.curOrg = orgDetailObj.data;
        // console.log('received orgDetailObj: ' + JSON.stringify(orgDetailObj));

        vm.updateOrg = function() {
            OrgService.upsertOrg(vm.curOrg).then(function(response) {
                toastr.success('Organization ' + vm.curOrg.name + ' has been updated', 'Update Successful!');
              //  console.log('updateOrg, response = ' + JSON.stringify(response));
            }).catch(function(err) {
                console.log("error in updating organization " + JSON.stringify(vm.curOrg));
            });
        }; // updateOrg

    }


})();