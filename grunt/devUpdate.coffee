'use strict'
module.exports =
  ls:
    options:
      # just report
      updateType: 'report'
      # don't report ok packages by default
      reportUpdated: false
      # what packages to check
      packages:
        # only devDependencies by default
        devDependencies: true
        dependencies: false
      # by deafult - use matchdep default findup to locate package.json
      packageJson: null
  do:
    options:
      # just report
      updateType: 'prompt'
      # don't report ok packages by default
      reportUpdated: false
      # what packages to check
      packages:
        # only devDependencies by default
        devDependencies: true
        dependencies: false
      # by deafult - use matchdep default findup to locate package.json
      packageJson: null

