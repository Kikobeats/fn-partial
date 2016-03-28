'use strict'

var players = {
  one: 'Kiko',
  two: 'Ricard',
  three: 'Xavi'
}

function size (objt) {
  return Object.keys(objt).length
}

function failMode () {
  console.log('\nfail mode\n')
  var numPlayers = size(players)
  console.log('» numPlayers before:', numPlayers)
  players.four = 'Ben'
  console.log('» numPlayers after:', numPlayers)
  delete players.four
}

function partialMode () {
  console.log('\npartial mode\n')
  var partial = require('fn-partial')
  var numPlayers = partial(size, players)
  console.log('» numPlayers before:', numPlayers())
  players.four = 'Ben'
  console.log('» numPlayers after:', numPlayers())
  delete players.four
}

function bindMode () {
  console.log('\nbind mode\n')
  var numPlayers = size.bind(null, players)
  console.log('» numPlayers before:', numPlayers())
  players.four = 'Ben'
  console.log('» numPlayers after:', numPlayers())
  delete players.four
}

failMode()
partialMode()
bindMode()
