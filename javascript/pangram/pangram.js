function Pangram (string){
  this.string = string;
};

Pangram.prototype.getChars = function () {
  var unique = '';
  var s = this.string.toLowerCase().replace(/[^a-z]+/g,'').split('').sort().join('');
  for (var i=0; i<s.length; i++){
      if(unique.indexOf(s[i]) === -1){
          unique += s[i];
      }
  }
  return unique;
};

Pangram.prototype.isPangram = function (){
  s = this.getChars();
  return s === "abcdefghijklmnopqrstuvwxyz";
};

module.exports = Pangram;
