/**
 * Created by wangg5 on 6/1/15.
 */

(function() {
    'use strict';

    angular.module('Constants', [])
        .constant('HOST', 'http://localhost:3000/')
        .constant('URL_CONFIGS', {
            'ORG_LIST' : 'http://localhost:3000/podemo/organizations.json',
            'AN_ORG' : 'http://localhost:3000/podemo/organizations/'
        });

})();