#!/usr/bin/node
const addMeMaybe = require('./102-add_me_maybe.js').addMeMaybe;
addMeMaybe(4, function (nb) {
  console.log('New value: ' + nb);
});
