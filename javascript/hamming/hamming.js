var Hamming = function () {}

Hamming.prototype.compute = function (strand1, strand2) {
  var count = 0;
  if (strand1.length !== strand2.length) {
    throw new Error('DNA strands must be of equal length.')
  } else {
    for (i = 0; i < strand1.length; i++) {
      if (strand1[i] !== strand2[i]) {
        count++;
      }
    }
  }
  return count;
}

module.exports = Hamming
