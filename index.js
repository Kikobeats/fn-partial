'use strict'

module.exports = function partial (fn) {
  var args = Array.prototype.slice.call(arguments, 1)
  return function _partial () {
    var allArguments
    allArguments = args.concat(Array.prototype.slice.call(arguments))
    return fn.apply(this, allArguments)
  }
}
