'use strict'
module.exports = (grunt) ->
  grunt.registerTask 'updateMd5', ->
    grunt.config.set 'md5', grunt.file.readJSON 'app/static/json/md5.json'