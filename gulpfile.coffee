'use strict'

# -- Dependencies --------------------------------------------------------------

gulp       = require 'gulp'
browserify = require 'gulp-browserify'
concat     = require 'gulp-concat'
header     = require 'gulp-header'
uglify     = require 'gulp-uglify'
pkg        = require './package.json'

# -- Files ---------------------------------------------------------------------

path =
  origin : 'index.js'
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
  gulp.src path.origin
  .pipe browserify()
  .pipe concat 'fn.partial.js'
  .pipe uglify()
  .pipe header banner, pkg: pkg
  .pipe gulp.dest path.dist
  return

gulp.task 'default', ->
  gulp.start 'build'
  return
