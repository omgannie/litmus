// step 1: access emotions data from view
function fetchPassageEmotionScores() {
  var emotionData = $('.emotion-passage').data('passageEmotion');

  return emotionData;
};

// step 1.5: fetch strongest emotion of passage
function fetchStrongestEmotionFromPassage() {
  var strongest = $('.emotion-passage').data('strongestEmotionFromPassage');

  return strongest;
};

function fetchLyricsEmotionScores() {
  var emotionData = $('.emotion-lyrics').data('lyricsEmotion');

  return emotionData;
};

function fetchStrongestEmotionFromLyrics() {
  var strongest = $('.emotion-lyrics').data('lyricsEmotion');

  var strongest;
};

// step 2: change emotions scores into percentages
// function is in data_percentage_conversion.js

// step 3: get specific hue/saturation/brightness of emotion
// function is in watson_color.js

// step 4: create gradient - use percentages to set length, use specific color to set actual color of gradient section
// function is in watson_gradient.js

// step 5: append to view!!!!
