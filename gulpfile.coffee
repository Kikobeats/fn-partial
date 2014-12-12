'use strict'

# -- Dependencies --------------------------------------------------------------

gulp       = require 'gulp'
header     = require 'gulp-header'
uglify     = require 'gulp-uglify'
pkg        = require './package.json'
browserify = require 'browserify'

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

options =
  require: __dirname + '/index.js'
  outfile: path.origin
  entry: 'fn-partial'

# -- Tasks ---------------------------------------------------------------------

gulp.task 'build', ->
  browserify(options).bundle()
  gulp.src path.origin
  .pipe uglify()
  .pipe header banner, pkg: pkg
  .pipe gulp.dest path.dist
  return

gulp.task 'default', ->
  gulp.start 'build'
  return
