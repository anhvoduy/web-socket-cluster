const grunt_file = function(grunt) {
    grunt.initConfig({
        pkg : grunt.file.readJSON('package.json'),
        jshint : {
            myFiles : ['./Server/<strong>/*.js','./Routes/</strong>/*.js']
        },
        nodemon : {
            script : './Server/'
        }
    });
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-nodemon');
    grunt.registerTask('default', ['jshint','nodemon']);
};

module.exports = grunt_file;