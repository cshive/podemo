/**
 * Created by wangg5 on 6/3/15.
 */


(function() {
    'use strict';

    angular.module('LocalCacheModule')

    .factory('LocalCacheService', LocalCacheService);

    LocalCacheService.$inject = ['localStorageService'];

    function LocalCacheService(localStorageService) {
        var services = {
            cacheItem : cacheItem,
            getCacheWithKey : getCacheWithKey,
            removeItemFromCache : removeItemFromCache,
            clearAllCache : clearAllCache,
            getAllCacheKeys : getAllCacheKeys
        };

        return services;

        /*************************** implementations below *******************/

        function cacheItem(key, item) {
            if (isCacheSupported()) {
                localStorageService.set(key, item);
            }
        }


        function getCacheWithKey(key) {
            if (isCacheSupported()) {
                return localStorageService.get(key);
            }
        }


        function removeItemFromCache(key) {
            if (isCacheSupported()) {
                localStorageService.remove(key);
            }
        }

        function clearAllCache() {
            if (isCacheSupported()) {
                localStorageService.removeAll();
            }
        }


        function getAllCacheKeys() {
            if (isCacheSupported()) {
                return localStorageService.keys();
            }
        }


        function isCacheSupported() {
            return localStorageService.isSupported;
        }


    }



})();