// use watson data to convert emotional tone & score into color
// RGB is determined by emotion- first digit of score
// opacity is determined by second digit of score - measurement of intensity of emotion?
// simulation of Watson data
var exampleData = { "document_tone": {
  "tone_categories": [
    {
      "tones": [
        {
          "score": 0.860773,
          "tone_id": "anger",
          "tone_name": "Anger"
        },
        {
          "score": 0.030624,
          "tone_id": "disgust",
          "tone_name": "Disgust"
        },
        {
          "score": 0.023961,
          "tone_id": "fear",
          "tone_name": "Fear"
        },
        {
          "score": 0.000702,
          "tone_id": "joy",
          "tone_name": "Joy"
        },
        {
          "score": 0.130101,
          "tone_id": "sadness",
          "tone_name": "Sadness"
        }
      ],
      "category_id": "emotion_tone",
      "category_name": "Emotion Tone"
    }
  ]
}
}

// returns a hash saved to a variable
var toneDocument = exampleData['document_tone'];
// returns an array of a tones hash
var toneCategories = toneDocument['tone_categories'][0];
var toneScores = toneCategories['tones'];

function convertEmotionsToColors(toneScores) {
  var colorConvert = {
    "Anger": "red",
    "Disgust": "green",
    "Fear": "black",
    "Joy": "yellow",
    "Sadness": "blue"
  };

  var strongestEmotion = fetchHighestRankingEmotion(toneScores);

  d3.select('.gradient')
    .style('background-color', colorConvert[strongestEmotion.tone_name]);
};

function fetchHighestRankingEmotion(arrayOfEmotionScores) {
  var highestRankingEmotion = arrayOfEmotionScores[0];

  for (var i = 0; i < arrayOfEmotionScores.length; i++) {
    if (highestRankingEmotion.score < arrayOfEmotionScores[i].score) {
      highestRankingEmotion = arrayOfEmotionScores[i];
    };

    return highestRankingEmotion;
  };
};

// use watson data to convert emotional tone & score into color
// RGB is determined by emotion- first digit of score
// opacity is determined by second digit of score - measurement of intensity of emotion?
// simulation of Watson data
var exampleData = { "document_tone": {
  "tone_categories": [
    {
      "tones": [
        {
          "score": 0.860773,
          "tone_id": "anger",
          "tone_name": "Anger"
        },
        {
          "score": 0.030624,
          "tone_id": "disgust",
          "tone_name": "Disgust"
        },
        {
          "score": 0.023961,
          "tone_id": "fear",
          "tone_name": "Fear"
        },
        {
          "score": 0.000702,
          "tone_id": "joy",
          "tone_name": "Joy"
        },
        {
          "score": 0.130101,
          "tone_id": "sadness",
          "tone_name": "Sadness"
        }
      ],
      "category_id": "emotion_tone",
      "category_name": "Emotion Tone"
    }
  ]
}
}

// returns a hash saved to a variable
var toneDocument = exampleData['document_tone'];
// returns an array of a tones hash
var toneCategories = toneDocument['tone_categories'][0];
var toneScores = toneCategories['tones'];

function convertEmotionsToColors(toneScores) {
  var colorConvert = {
    "Anger": "red",
    "Disgust": "green",
    "Fear": "black",
    "Joy": "yellow",
    "Sadness": "blue"
  };

  var strongestEmotion = fetchHighestRankingEmotion(toneScores);

  d3.select('.gradient')
    .style('background-color', colorConvert[strongestEmotion]);
};

function fetchHighestRankingEmotion(arrayOfEmotionScores) {
  var highestRankingEmotion = arrayOfEmotionScores[0];

  for (var i = 0; i < arrayOfEmotionScores.length; i++) {
    if (highestRankingEmotion.score < arrayOfEmotionScores[i].score) {
      highestRankingEmotion = arrayOfEmotionScores[i];
    };

    return highestRankingEmotion.tone_name;
  };
};

// formats hsb for css input
function formatHSB(emotionObject) {
  var colorHash = translateEmotionToHSB(emotionObject);

  return "hsl(" + colorHash['hue'] + ", " + colorHash['saturation'] + ", " + colorHash['lightness'] + ")";
};

var color = {
  hue: "",
  saturation: "",
  lightness: "",
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
  } else if (emotionObject.score < 0.75 && emotionObject.score > 0.5) {
    color['lightness'] = '70%';
  } else if (emotionObject.score <= 0.5) {
    color['lightness'] = '50%';
  };
};
