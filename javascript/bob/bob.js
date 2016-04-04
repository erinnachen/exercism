//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  var has_char_regex = /[a-zA-Z]/;
  if (has_char_regex.test(input) && input === input.toUpperCase()) {
    return 'Whoa, chill out!'
  } else if (input.slice(-1) === '?') {
    return 'Sure.'
  } else if (input.trim() === '') {
    return 'Fine. Be that way!'
  } else {
    return 'Whatever.';
  }
};

module.exports = Bob;
