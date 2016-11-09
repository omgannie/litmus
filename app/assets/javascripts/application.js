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
  var passageData = fetchPassageEmotionScores();
  var lyricsData = fetchLyricsEmotionScores();

  var strongestPassage = fetchStrongestEmotionFromPassage(passageData);
  var strongestLyrics = fetchStrongestEmotionFromLyrics(strongestPassage);

  var passageColors = createColors(passageData);
  var lyricsColors = createColors(lyrics);

  var passageShades = [];
  var lyricShades = [];

  var passagePercentages = percentageConversion(passageData);
  var lyricPercentages = percentageConversion(lyricsData);

  for(var i=0; i < passageColors.length; i++) {
    var shade = formatHSL(passageColors[i]);
    console.log(passageColors[i].emotion);
    console.log(passageColors[i].score);
    console.log(percentages[i]);
    console.log(shade);
    console.log(shade.toString());
    passageShades.push(shade.toString());
  };

  for(var i=0; i < lyricsColors.length; i++) {
    var shade = formatHSL(lyricsColors[i]);
    console.log(lyricsColors[i].emotion);
    console.log(lyricsColors[i].score);
    console.log(percentages[i]);
    console.log(shade);
    console.log(shade.toString());
    lyricShades.push(shade.toString());
  };

  createPassageGradient(passageColors, passageShades, passagePercentages);
  createLyricsGradient(lyricsColors, lyricShades, lyricPercentages);
});
