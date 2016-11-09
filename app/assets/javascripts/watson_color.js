function Color(emotion, score) {
  this.emotion = emotion;
  this.score = score;
};

Color.prototype.hue = function() {
  if (this.emotion === 'anger') {
    return 0;
  } else if (this.emotion === 'disgust') {
    return 98;
  } else if (this.emotion === 'fear') {
    return 327;
  } else if (this.emotion === 'joy') {
    return 55;
  } else if (this.emotion === 'sadness') {
    return 230;
  };
};

Color.prototype.saturation = function() {
  if (this.score >= 0.75) {
    return 0.75;
  } else if (this.score > 0.50) {
    return 0.5;
  } else if (this.score <= 0.50) {
    return 0.50;
  };
};

Color.prototype.lightness = function() {
  if (this.score >= 0.75) {
    return 0.55;
  } else if (this.score > 0.50) {
    return 0.9;
  } else if (this.score <= 0.50) {
    return 0.75;
  };
};

Color.prototype.length = function() {
// SAYAM
};

function createColors(emotionHash) {
  var arrayOfColors = [];
  var emotions = ['anger', 'joy', 'fear', 'sadness', 'disgust'];

  Object.keys(emotionHash).forEach(function (key) {
    if (emotions.includes(key)) {
      var value = emotionHash[key]

      var newColor = new Color(key, value);

      arrayOfColors.push(newColor);
    };
  });

  return arrayOfColors;
};

function formatHSB(color) {
  return d3.hsl(color.hue(), color.saturation(), color.lightness());
};
