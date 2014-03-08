'use strict'
module.exports =
  build:
    options:
      length: 10
      basedir: '<%= app.static %>'

    src: ['<%= app.js %>/application.min.js', '<%= app.css %>/main.css']
    dest: '<%= app.json %>/md5.json'

