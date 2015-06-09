/**
 * Created by wangg5 on 6/1/15.
 */

(function() {
    'use strict';

    angular.module('ctrpApp', [
        'ui.router',
        'Constants',
        'PromiseServiceModule',
        'LocalCacheModule',
        'ngAnimate',
        'toastr'
    ])
        .config(function ($stateProvider, $urlRouterProvider, $httpProvider) {

            $httpProvider.defaults.useXDomain = true;
            //  $httpProvider.defaults.withCredentials = true;
            delete $httpProvider.defaults.headers.common['X-Requested-With'];
            //    $httpProvider.interceptors.push('AuthInterceptor');

            $urlRouterProvider.otherwise('/main/welcome');

            $stateProvider.state('main', {
                url: '/main',
                views: {
                    '': {
                        templateUrl: 'partials/main_content_frame.html'
                    },

                    'right_panel@main': {
                        templateUrl: 'partials/right_panel.html'
                    },

                    'main_content@main': {
                        templateUrl: 'partials/main_content.html'
                    }
                }
            })

                .state('main.defaultContent', {
                    url: '/welcome',
                    templateUrl: 'partials/welcome_content.html'
                })

                .state('main.organizations', {
                    url: '/organizations',
                    templateUrl: 'partials/organization_list.html',
                    controller: 'organizationCtrl as orgsView'
                })

                .state('main.orgDetail', {
                    url: '/organizations/:orgId/:orgName',
                    templateUrl: 'partials/orgDetails.html',
                    controller: 'orgDetailCtrl as orgDetailView',
                    resolve: {
                        OrgService : 'OrgService',
                        orgDetailObj : function($stateParams, OrgService) {
                            return OrgService.getOrgById($stateParams.orgId);
                        }
                    } //resolve the promise and pass it to controller
                })



        }).run(function() {
            console.log('running ctrp angular app');
        });



})();
