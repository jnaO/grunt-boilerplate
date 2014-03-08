'use strict'
module.exports =
  dist:
    options:
      variables:
        md5_js_pub: '<%= md5["js/application.min.js"] %>.'
        md5_css_pub: '<%= md5["css/main.css"] %>.'
      prefix: '@@'
    files: [
      expand: true
      flatten: true
      src: ['<%= app.templates %>/*.html']
      dest: '<%= app.root %>/'
    ]

  dev:
    options:
      variables:
        md5_js_adm: ''
        md5_js_pub: ''
        md5_css_adm: ''
        md5_css_pub: ''
      prefix: '@@'
    files: [
      expand: true
      flatten: true
      src: ['<%= app.templates %>/*.html']
      dest: '<%= app.root %>/'
    ]
