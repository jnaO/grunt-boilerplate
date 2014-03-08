'use strict'
module.exports =
  options:
    plugins: [
      removeViewBox: true
      removeUselessStrokeAndFill: true
      removeEmptyAttrs: true
    ]
  dist:
    files: [
      expand: true,
      cwd: 'icons/raw/'
      src: ['**/*.svg']
      dest: 'icons/'
    ]

