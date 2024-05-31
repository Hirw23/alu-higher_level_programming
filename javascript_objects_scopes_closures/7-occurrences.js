#!/usr/bin/node
exports.nbOccurences = function (list, searchElement) {
  return list.reduce((a, V) => (V === searchElement ? a + 1 : a), 0);
};
