var DnaTranscriber = function () {}

DnaTranscriber.prototype.toRna = function (strand) {
  var mapping = { G: 'C', C:'G', T: 'A', A: 'U' }
  var rna = '';
  for (i = 0; i < strand.length; i++) {
    rna += mapping[strand[i]]
  }
  return rna;
}

module.exports = DnaTranscriber
