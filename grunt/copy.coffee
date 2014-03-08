'use strict'
module.exports =
  dist:
    files: [
      {src: '<%= app.js %>/application.min.js',dest: '<%= app.js %>/<%= md5["js/application.min.js"] %>.application.min.js'}
      {src: '<%= app.css %>/main.css',dest: '<%= app.css %>/<%= md5["css/main.css"] %>.main.css'}
    ]
