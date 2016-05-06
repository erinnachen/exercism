var Words = function (){};

Words.prototype.count = function(sentence) {
  var counts = {};
  var words = sentence.trim().split(/\s+/);

  for(var i = 0; i < words.length; i++) {
    word = words[i].toLowerCase()
    if (counts.hasOwnProperty(word)){
      counts[word] += 1;
    } else {
      counts[word] = 1;
    }
  }
  return counts;
}

module.exports = Words
