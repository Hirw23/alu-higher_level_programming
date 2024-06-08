#!/usr/bin/node
/* happy code */

const supSquare = require('./5-square.js');
class Square extends supSquare {
  charPrint (C) {
    if (C == null) {
      C = 'X';
    }
    for (let i = 0; i < this.width; i++) {
      console.log(C.repeat(this.width));
    }
  }
}

module.exports = Square;
