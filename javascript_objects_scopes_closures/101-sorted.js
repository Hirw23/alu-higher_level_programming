#!/usr/bin/node
const dict = require('./101-data.js').dict;
const dKeys = Object.keys(dict);
const values = Object.values(dict);
let matched;
const result = {};
for (let i = 0; i < values.length; i++) {
  result[JSON.stringify(values[i])] = [];
  matched = dKeys.filter(key => dict[key] === values[i]);
  matched.forEach(item => result[JSON.stringify(values[i])].push(item));
}
console.log(result);
