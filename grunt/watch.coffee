'use strict'
module.exports =
  sass:
    files: ['<%= app.sass %>/{,*/}*.sass']
    tasks: ['sass:dev']
  # percolator:
  #   files: '<%= app.js %>/{,*/}*.coffee'
  #   tasks: ['percolator', 'uglify']
  # amd:
  #   files: ['<%= app.js %>/{,*/}*.js']
  #   tasks: ['requirejs:dev']
  jinja2:
    files: ['<%= app.templates %>/grunt_build_files/{,*/}*.jinja2']
    tasks: ['jinja2:compile']
  variables:
    files: ['<%= app.templates %>/*.html']
    tasks: ['replace:dev']
  cleansvg:
    files: ['icons/raw/*.svg']
    tasks: ['svgmin']
  font:
    files: ['icons/*.svg']
    tasks: ['webfont']
