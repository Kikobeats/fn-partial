'use strict'

# -- Dependencies --------------------------------------------------------------

gulp       = require 'gulp'
sh         = require 'execSync'
header     = require 'gulp-header'
uglify     = require 'gulp-uglify'
pkg        = require './package.json'

# -- Files ---------------------------------------------------------------------

path =
  origin : 'dist/fn.partial.js'
  dist   : 'dist'

banner = [
           "/**"
           " * <%= pkg.name %> - <%= pkg.description %>"
           " * @version v<%= pkg.version %>"
           " * @link    <%= pkg.homepage %>"
           " * @license <%= pkg.license %>"
           " */"].join("\n")

# -- Tasks ---------------------------------------------------------------------

gulp.task 'build', ->
  sh.run("browserify -r ./index.js:fn-partial -o #{path.origin}")
  gulp.src path.origin
  .pipe uglify()
  .pipe header banner, pkg: pkg
  .pipe gulp.dest path.dist
  return

gulp.task 'default', ->
  gulp.start 'build'
  return
