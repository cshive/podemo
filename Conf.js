/**
 * Created by wangg5 on 6/24/15.
 */

exports.config = {
    seleniumAddress: 'http://localhost:4444/wd/hub',

    capabilities: {
        'browserName' : 'firefox'
    },

 //   specs: ['test_spec1.js'],


    jasmineNodeOpts: {
        onComplete: null,
        isVerbose: true,
        showColors: true,
        includeStackTrace: true
    },

   framework: 'cucumber',

    specs: [
        'features/test1.feature'
    ],

    jasmineNodeOpts: {
        showColors: true
    },

    cucumberOpts: {
        require: 'features/step_definitons/test1.js',
        format: 'pretty' // or summary
    }
};