// step 1: access emotions data from view
function fetchEmotionScores() {
  var emotionData = $('.emotion').data('emotionData');

  return emotionData;
};

// step 1.5: fetch strongest emotion of passage
function fetchStrongestEmotion() {
  var strongest = $('.emotion').data('strongestEmotion');

  return strongest;
};

// step 2: change emotions scores into percentages
function convertToPercentages() {
  // Sayam is working on this
};

// step 3: get specific hue/saturation/brightness of emotion


// step 4: create gradient - use percentages to set length, use specific color to set actual color of gradient section

// step 5: append to view!!!!
