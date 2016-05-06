var Gigasecond = function(date) {
  this.currentDate = date;
}

Gigasecond.prototype.date = function() {
  var d = new Date();
  d.setTime(this.currentDate.getTime() + 1000000000000);
  return d;
}

module.exports = Gigasecond
