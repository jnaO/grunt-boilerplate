'use strict'
module.exports =
  compile:
    options:
      baseUrl: "app/static/js"
      mainConfigFile: "req_conf.js"
      name: "application"
      out: "app/static/js/application.min.js"
      preserveLicenseComments: false
      paths:
        reqLib: "libs/require"
      include: "reqLib"
  dev:
    options:
      baseUrl: "app/static/js"
      mainConfigFile: "req_conf.js"
      name: "application"
      out: "app/static/js/application.min.js"
      optimize: "none"
      paths:
        reqLib: "libs/require"
      include: "reqLib"
