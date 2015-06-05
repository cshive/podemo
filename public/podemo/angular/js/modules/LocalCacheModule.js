/**
 * Created by wangg5 on 6/3/15.
 */


(function() {
    'use strict';

    angular.module('LocalCacheModule', ['LocalStorageModule'])

        .config(function(localStorageServiceProvider) {
            localStorageServiceProvider.setPrefix('CTRP-NCI')
                .setStorageType('localStorage'); //for caching data in browser's localStorage data store
            localStorageServiceProvider.setNotify(true, true) // send signals for setItem and removeItem
        });


})();