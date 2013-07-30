module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON('package.json')
        less:
            options:
                ieCompat: false
            main:
                files:
                    'static/css/styles.css': ['static/less/styles.less']
        coffee:
            main:
                expand: true
                flatten: false
                cwd: 'static/coffee'
                src: ['**/*.coffee']
                dest: 'static/js'
                ext: '.js'
        _watch_:
            options:
                nocase: true
            coffee:
                files: ['static/coffee/**/*.coffee']
                tasks: ['coffee:main']
            less:
                files: ['static/less/**/*.less']
                tasks: ['less:main']
        connect:
            server:
                options:
                    port: 8080


    grunt.loadNpmTasks 'grunt-contrib-less'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-connect'

    grunt.registerTask 'build', ['less', 'coffee']
    grunt.registerTask 'default', ['build']

    grunt.renameTask 'watch', '_watch_'
    grunt.registerTask 'watch', ['default', 'connect', '_watch_']
