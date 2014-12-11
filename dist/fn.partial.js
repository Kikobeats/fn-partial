/**
 * fn-partial - Feel like a memory pointer. Pass a reference to a function.
 * @version v0.12.11a
 * @link    https://github.com/Kikobeats/fn-partial
 * @license MIT
 */!function r(t,e,n){function o(i,a){if(!e[i]){if(!t[i]){var c="function"==typeof require&&require;if(!a&&c)return c(i,!0);if(u)return u(i,!0);throw new Error("Cannot find module '"+i+"'")}var f=e[i]={exports:{}};t[i][0].call(f.exports,function(r){var e=t[i][1][r];return o(e?e:r)},f,f.exports,r,t,e,n)}return e[i].exports}for(var u="function"==typeof require&&require,i=0;i<n.length;i++)o(n[i]);return o}({1:[function(r,t){"use strict";t.exports=function(r){var t=Array.prototype.slice.call(arguments,1);return function(){var e;return e=t.concat(Array.prototype.slice.call(arguments)),r.apply(this,e)}}},{}]},{},[1]);
