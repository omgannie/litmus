// use watson data to convert emotional tone & score into color
// RGB is determined by emotion- first digit of score
// opacity is determined by second digit of score - measurement of intensity of emotion?

// returns a hash saved to a variable
var emotionTones = passageData['document_tone']['tone_categories'][0];
var emotionScoresArray = emotionTones.tones;

// fetches highest ranking emotion
function fetchHighestRankingEmotion(arrayOfEmotionScores) {
  var highestRankingEmotion = arrayOfEmotionScores[0];

  for (var i = 0; i < arrayOfEmotionScores.length; i++) {
    if (highestRankingEmotion.score < arrayOfEmotionScores[i].score) {
      highestRankingEmotion = arrayOfEmotionScores[i];
    };
  };

  return highestRankingEmotion;
};

// color object literal;
var color = {
  hue: "",
  saturation: "",
  lightness: "",
};

// formats hsb for css input
function formatHSB(emotionObject) {
  var color = translateEmotionToHSB(emotionObject);

  return "hsl(" + color['hue'] + ", " + color['saturation'] + ", " + color['lightness'] + ")";
};

// return specific color based on intensity of score
function translateEmotionToHSB(emotionObject) {

  if (emotionObject.tone_id === "anger") {
    color['hue'] = '0';

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "disgust") {
    color['hue'] = '98';

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "fear") {
    color['hue'] = '327';

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "joy") {
    color['hue'] = '55';

    adjustIntensity(emotionObject);

    return color;
  } else if (emotionObject.tone_id === "sadness") {
    color['hue'] = '260';

    adjustIntensity(emotionObject);

    return color;
  };
};

// adjust intensity of color
function adjustIntensity(emotionObject) {
  color['saturation'] = '100%';

  if (emotionObject.score >= 0.75) {
    color['lightness'] = '100%';
  } else if (emotionObject.score < 0.75 && emotionObject.score > 0.50) {
    color['lightness'] = '70%';
  } else if (emotionObject.score <= 0.50) {
    color['lightness'] = '50%';
  };
};

function addWatsonTestButtonForPassage() {
  d3.select('body')
    .append('button')
    .attr('class', 'watson-passage-btn')
    .text('Click Me to Test Watson for Passage');
};

function addWatsonTestButtonForLyrics() {
  d3.select('body')
    .append('button')
    .attr('class', 'watson-lyrics-btn')
    .text('Click Me to Test Watson for Lyrics');
};

function testPassageButton() {
  $('.watson-passage-btn').on('click', function() {

    // fetch color from emotion data
    var strongestEmotion = fetchHighestRankingEmotion(emotionScoresArray);
    var formattedColor = formatHSB(strongestEmotion);

    // load color of emotion from passage as a new div
    var loadColor = d3.select('body')
      .append('div')
      .attr('class', 'color-from-emotion')
      .style('background-color', formattedColor)
      .style('color', 'white')
      .text('Hi this emotion is ' + strongestEmotion.tone_id);
  });
};
