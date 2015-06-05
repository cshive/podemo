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

        /**
         *
         * @param key, String
         * @param item, any Object
         */
        function cacheItem(key, item) {
            if (isCacheSupported()) {
                localStorageService.set(key, item);
            }
        }


        /**
         * retrieved item from cache with the 'key'
         *
         * @param key String
         * @returns {*}
         */
        function getCacheWithKey(key) {
            if (isCacheSupported()) {
                return localStorageService.get(key);
            }
        }


        /**
         * remove object with the 'key' from local storage permanently
         *
         * @param key String
         */
        function removeItemFromCache(key) {
            if (isCacheSupported()) {
                localStorageService.remove(key);
            }
        }


        /**
         * purge the localStorage in the browser
         *
         */
        function clearAllCache() {
            if (isCacheSupported()) {
                localStorageService.removeAll();
            }
        }


        /**
         * retrieve all keys for cached objects
         *
         * @returns Array of String
         */
        function getAllCacheKeys() {
            if (isCacheSupported()) {
                return localStorageService.keys();
            }
        }


        /**
         * Examine if the browser supports localStorage cache
         *
         * @returns Boolean
         */
        function isCacheSupported() {
            return localStorageService.isSupported;
        }


    }



})();