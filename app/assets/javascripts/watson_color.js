// use watson data to convert emotional tone & score into color
// RGB is determined by emotion- first digit of score
// opacity is determined by second digit of score - measurement of intensity of emotion?

var lyricsEmotionTones = lyricsData['document_tone']['tone_categories'][0];
var lyricsEmotionScoresArray = lyricsEmotionTones.tones;

// returns a hash saved to a variable
var passageEmotionTones = passageData['document_tone']['tone_categories'][0];
var passageEmotionScoresArray = passageEmotionTones.tones;

// fetches highest ranking emotion
function fetchHighestRankingEmotion(arrayOfEmotionScores) {
  var highestRankingEmotion = arrayOfEmotionScores[0];

  for (var i = 0; i < arrayOfEmotionScores.length; i++) {
    if (highestRankingEmotion.score < arrayOfEmotionScores[i].score) {
      highestRankingEmotion = arrayOfEmotionScores[i];
      color['length'] = 0.4
    };
  };

  return highestRankingEmotion;
};

// color object literal;
var color = {
  hue: "",
  saturation: "",
  lightness: "",
  length: "",
};

// formats hsb for css input
function formatHSB(emotionObject) {
  var color = translateEmotionToHSB(emotionObject);

  return d3.hsl(color['hue'], color['saturation'], color['lightness']);
};

// return specific color based on intensity of score
function translateEmotionToHSB(emotionObject) {

  if (emotionObject.tone_id === "anger") {
    color['hue'] = 0;

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "disgust") {
    color['hue'] = 98;

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "fear") {
    color['hue'] = 327;

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "joy") {
    color['hue'] = 55;

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "sadness") {
    color['hue'] = 230;

    adjustIntensity(emotionObject);

    return color;
  };
};

// adjust intensity of color
function adjustIntensity(emotionObject) {
  if (emotionObject.score >= 0.75) {
    color['saturation'] = 0.75;
    color['lightness'] = 0.55;
  } else if (emotionObject.score < 0.75 && emotionObject.score > 0.50) {
    color['saturation'] = 0.5;
    color['lightness'] = 0.9;
  } else if (emotionObject.score <= 0.50) {
    color['saturation'] = 0.50;
    color['lightness'] = 0.75;
  };
};
