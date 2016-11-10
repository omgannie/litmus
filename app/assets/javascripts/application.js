// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require d3

$(document).ready(function() {
  //passage stuff
  var passageData = fetchPassageEmotionScores();
  var strongestPassage = fetchStrongestEmotionFromPassage(passageData);
  var passageColors = createColors(passageData);

  var passageShades = [];

  var passagePercentages = percentageConversion(passageData);

  for(var i=0; i < passageColors.length; i++) {
    var shade = formatHSL(passageColors[i]);
    passageShades.push(shade.toString());
  };

  createPassageGradient(passageColors, passageShades, passagePercentages);

  //lyrics gradient
  var lyricsData = fetchLyricsEmotionScores();
  var strongestLyrics = fetchStrongestEmotionFromLyrics(lyricsData);
  var lyricsColors = createColors(lyricsData);

  var lyricsShades = [];

  var lyricsPercentages = percentageConversion(lyricsData);

  for(var i=0; i < lyricsColors.length; i++) {
    var shade = formatHSL(lyricsColors[i]);
    lyricsShades.push(shade.toString());
  };

  createLyricsGradient(lyricsColors, lyricsShades, lyricsPercentages);

  addColorsToLegend(passageShades);
});

function addColorsToLegend(colorsArray) {
  // add joy color
  d3.select('li#joy')
    .style('background-color', colorsArray[0].toString());

  // add sadness
  d3.select('li#sadness')
    .style('background-color', colorsArray[1].toString());

  // add anger
  d3.select('li#anger')
    .style('background-color', colorsArray[2].toString());

  // add disgust
  d3.select('li#disgust')
    .style('background-color', colorsArray[3].toString());

  // add fear
  d3.select('li#fear')
    .style('background-color', colorsArray[4].toString());
}
