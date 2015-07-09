module.exports = function (grunt) {

    grunt.initConfig({
        protractor: {
            options: {
                keepAlive: true,
                configFile: "Conf.js"
            },
            run: {}
        },
        shell: {
            xvfb: {
                command: 'Xvfb :98 -ac -screen 0 1600x1200x24',
                options: {
                    async: true
                }
            }
        },
        env: {
            xvfb: {
                DISPLAY: ':98'
            }
        }
    });

    grunt.registerTask('protractor-xvfb', [
        'shell:xvfb',
        'env:xvfb',
        'protractor:run',
        'shell:xvfb:kill'
    ]);

}