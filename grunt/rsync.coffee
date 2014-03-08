'use strict'
module.exports =
  options:
    args: ["--verbose"],
    exclude: [
      ".git",
      ".git*",
      "*.sass",
      "*.scss",
      ".sass-*",
      "*.coffee",
      ".DS_Store",
      ".htaccess",
      "robots.txt",
      "node_modules",
      "package.json",
      "app/font_demo",
      "static/upload/",
      "static/js/json/",
      "static/css/sass/",
      "static/css/functions/"
      "views/application/grunt_build_files/"
    ],
    recursive: true
  dist:
    options:
      src: "./",
      dest: "granska.addgreen.se/public_html/"
      host: "USER@HOST:PATH"
  prod:
    options:
      src: "./",
      dest: "addgreen.se/public_html/"
      host: "USER@HOST"

