/**
 * Created by wangg5 on 6/24/15.
 */


var HtmlReporter = require('protractor-html-screenshot-reporter');

var reporter=new HtmlReporter({
    baseDirectory: '/var/lib/jenkins/jobs/Podemo_Build_Unit_Test/workspace', // a location to store screen shots.
    docTitle: 'Protractor Demo Reporter',
    docName:    'protractor-demo-tests-report.html'
});

exports.config = {
    seleniumAddress: 'http://localhost:4444/wd/hub',

    capabilities: {
        'browserName' : 'firefox'
    },

 //   specs: ['test_spec1.js'],


    onPrepare: function() {
        jasmine.getEnv().addReporter(reporter);
    },

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

    resultJsonOutputFile: 'report.json'


};