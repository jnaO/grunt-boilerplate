'use strict'
module.exports =
  dev:
    options:
      trace: true
      style: 'expanded'
    files:
      '<%= app.css %>/main.css': '<%= app.sass %>/main.sass'
  prod:
    options:
      trace: true
      style: 'compressed'
    files:
      '<%= app.css %>/main.css': '<%= app.sass %>/main.sass'

