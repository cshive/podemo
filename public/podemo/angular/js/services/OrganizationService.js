/**
 * Created by wangg5 on 6/2/15.
 */

(function () {
    'use strict';

    angular.module('ctrpApp')
        .factory('OrgService', OrgService);

    OrgService.$inject = ['PromiseService', 'URL_CONFIGS'];

    function OrgService(PromiseService, URL_CONFIGS) {

        var services = {
            getAllOrgs : getAllOrgs,
            getOrgById : getOrgById,
            upsertOrg : upsertOrg
        };

        return services;



        /*********************** implementations *****************/

        function getAllOrgs() {
            return PromiseService.getData(URL_CONFIGS.ORG_LIST);
        } //getAllOrgs


        function getOrgById(orgId) {
            return PromiseService.getData(URL_CONFIGS.AN_ORG + orgId + '.json');
        } //getOrgById



        function upsertOrg(orgObj) {
            //TODO:
        } //upsertOrg
    }


})();