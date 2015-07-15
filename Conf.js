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
        'features/*.feature'
    ],

    jasmineNodeOpts: {
        showColors: true
    },

    cucumberOpts: {
        //require: 'features/step_definitons/test6.js',
        format: 'pretty',
       tags: '@smoke'
       /*     "@runThat",
            "~@ignoreThis"]*/// or summary
    },

    resultJsonOutputFile: 'test/reports/cuke-report.json'
};