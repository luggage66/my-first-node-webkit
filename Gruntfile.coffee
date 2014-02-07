module.exports = (grunt) ->
	grunt.initConfig

		coffee:
			build:
				options:
					sourceMap: true
				expand: true
				cwd: 'src/'
				src: [ '**/*.coffee' ]
				dest: 'lib/'
				ext: '.js'

		jade:
			build:
				options:
					sourceMap: true
				files:
					'content/index.html': 'src/index.jade'

		less:
			build:
				options:
					sourceMap: true
				files:
					'content/style.css': 'src/style.less'

		copy:
			build:
				files: [
						expand: true
						cwd: 'public/fonts/'
						src: [ '*' ]
						dest: 'content/fonts'
					,
						expand: true
						cwd:  'public/scripts/'
						src: [ '*' ]
						dest: 'content/scripts'
				]
				

	grunt.loadNpmTasks "grunt-contrib-coffee"
	grunt.loadNpmTasks "grunt-contrib-jade"
	grunt.loadNpmTasks "grunt-contrib-less"
	grunt.loadNpmTasks "grunt-contrib-copy"

	grunt.registerTask('default', ['coffee', 'jade', 'less', 'copy'])

