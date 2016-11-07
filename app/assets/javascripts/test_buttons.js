function addWatsonTestButtonForPassage() {
  d3.select('body')
    .append('button')
    .attr('class', 'watson-passage-btn')
    .text('Passage Test');
};

function addWatsonTestButtonForLyrics() {
  d3.select('body')
    .append('button')
    .attr('class', 'watson-lyrics-btn')
    .text('Lyrics Test');
};

function testPassageButton() {
  $('.watson-passage-btn').on('click', function() {

    // fetch color from emotion data
    var strongestEmotion = fetchHighestRankingEmotion(passageEmotionScoresArray);
    var formattedColor = formatHSB(strongestEmotion);

    // load color of emotion from passage as a new div
    var loadColor = d3.select('body')
      .append('div')
      .attr('class', 'color-for-passage')
      .style('background-color', formattedColor)
      .style('color', 'white')
      .text('Hi this emotion is ' + strongestEmotion.tone_id);
  });
};

function testLyricsButton() {
  $('.watson-lyrics-btn').on('click', function() {

    // fetch color from emotion data
    var strongestEmotion = fetchHighestRankingEmotion(lyricsEmotionScoresArray);
    console.log(strongestEmotion);
    var formattedColor = formatHSB(strongestEmotion);
    console.log(formattedColor);

    // load color of emotion from passage as a new div
    var loadColor = d3.select('body')
      .append('div')
      .attr('class', 'color-for-lyrics')
      .style('background-color', formattedColor)
      .style('color', 'white')
      .text('Hi this emotion is ' + strongestEmotion.tone_id);
  });
};
