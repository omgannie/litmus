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
    return 240;
  };
};

Color.prototype.saturation = function() {
  if (this.emotion === 'anger') {
    if (this.score > 0.75) {
      return 2;
    } else if (this.score > 0.5) {
      return 0.7;
    } else if (this.score < 0.5) {
      return 0.5;
    };
  } else if (this.emotion === 'disgust') {
    if (this.score > 0.75) {
      return 0.8;
    } else if (this.score > 0.5) {
      return 0.7;
    } else if (this.score < 0.5) {
      return 0.5;
    };
  } else if (this.emotion === 'fear') {
    if (this.score > 0.75) {
      return 0.9;
    } else if (this.score > 0.5) {
      return 0.7;
    } else if (this.score < 0.5) {
      return 0.5;
    };
  } else if (this.emotion === 'joy') {
    if (this.score > 0.75) {
      return 0.9;
    } else if (this.score > 0.5) {
      return 0.7;
    } else if (this.score < 0.5) {
      return 0.5;
    };
  } else if (this.emotion === 'sadness') {
    if (this.score > 0.75) {
      return 0.9;
    } else if (this.score > 0.5) {
      return 0.7;
    } else if (this.score < 0.5) {
      return 0.5;
    };
  };
};

Color.prototype.lightness = function() {
  if (this.score > 0.75) {
    return 0.3;
  } else if (this.score > 0.5) {
    return 0.4;
  } else if (this.score < 0.5) {
    return 0.5;
  };
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

function formatHSL(color) {
  return d3.hsl(color.hue(), color.saturation(), color.lightness());
};
