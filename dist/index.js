/**
 * fn-partial - Feel like a memory pointer. Pass a reference to a function.
 * @version v0.12.11a
 * @link    https://github.com/Kikobeats/fn-partial
 * @license MIT
 */"use strict";module.exports=function(r){var t=Array.prototype.slice.call(arguments,1);return function(){var e;return e=t.concat(Array.prototype.slice.call(arguments)),r.apply(this,e)}};