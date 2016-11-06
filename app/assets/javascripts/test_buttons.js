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

  });
};

function testLyricsButton() {
  $('.watson-lyrics-btn').on('click', function() {

  });
};
