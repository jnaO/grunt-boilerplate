'use strict'
module.exports =
  compile:
    options:
      template_path: '<%= app.templates %>/grunt_build_files'
      context_path: '<%= app.context %>'
    files: [{
      expand: true,
      cwd: '<%= app.templates %>/grunt_build_files',
      src: ['**/!(_)*.jinja2'],
      dest: '<%= app.templates %>',
      ext: '.html'
    }]
