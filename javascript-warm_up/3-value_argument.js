#!/usr/bin/node
/* argumenttopass3 */
const args = process.argv;
/* theprocess */
if (args[2] === undefined) {
  console.log('No argument');
} else {
  console.log(args[2]);
}
