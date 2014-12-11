# fn-partial <a href="http://bower.io/search/?q=fn-partial"><img src="http://benschwarz.github.io/bower-badges/badge@2x.png" width="130" height="30"></a>

[![Build Status](http://img.shields.io/travis/kikobeats/fn-partial/master.svg?style=flat)](https://travis-ci.org/kikobeats/fn-partial)
[![Dependency status](http://img.shields.io/david/kikobeats/fn-partial.svg?style=flat)](https://david-dm.org/kikobeats/fn-partial)
[![Dev Dependencies Status](http://img.shields.io/david/dev/kikobeats/fn-partial.svg?style=flat)](https://david-dm.org/kikobeats/fn-partial#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/fn-partial.svg?style=flat)](https://www.npmjs.org/package/fn-partial)
[![Gittip](http://img.shields.io/gittip/kikobeats.svg?style=flat)](https://www.gittip.com/kikobeats/)

> Pass a reference to a function with paramters (as a pointers) [History @ StackOverflow](https://stackoverflow.com/questions/373157/how-can-i-pass-a-reference-to-a-function-with-parameters).

## Install

```bash
npm install --save object-assign
```

If you want to use in the browser (powered by [Browserify](http://browserify.org/)):

```html
<script src="bower_components/fn-partial/dist/fn.partial.js"></script>
```
## Usage

```js
var partial = require('fn-partial');

// Call a function without arguments
var result = partial(sayHello());
result();
// => console.log("Hello World");

// Call a function with arguments
var result = partial(sayHello('Kiko'));
result();
// => console.log("Hello World, Kiko!")
```

## License

MIT © [Kiko Beats](http://www.kikobeats.com)
