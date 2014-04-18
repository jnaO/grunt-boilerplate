'use strict'
module.exports =
  icons:
    src: 'icons/*.svg'
    dest: '<%= app.css %>/fonts'
    destCss: '<%= app.sass %>/base'
    options:
      relativeFontPath: 'fonts'
      types: 'eot,woff,ttf,svg'
      order: 'eot,svg,woff,ttf'
      stylesheet: 'sass'
      destHtml: 'app/ico'
      startCodepoint: 0xE001
      engine: 'fontforge'


