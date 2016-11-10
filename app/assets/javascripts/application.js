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

    console.log(passageColors[i].emotion);
    console.log(passageColors[i].score);
    console.log(passagePercentages[i]);
    console.log(shade.toString());
    passageShades.push(shade.toString());
  };

  createPassageGradient(passageColors, passageShades, passagePercentages);

  //lyrics gradient
  var lyricsData = fetchLyricsEmotionScores();
  var strongestLyrics = fetchStrongestEmotionFromLyrics(lyricsData);
  var lyricsColors = createColors(lyricsData);

  var lyricsShades = [];

  var lyricsPercentages = percentageConversion(lyricsData);

  console.log('===================LYRICS =================');
  for(var i=0; i < lyricsColors.length; i++) {
    var shade = formatHSL(lyricsColors[i]);
    console.log(lyricsColors[i].emotion);
    console.log(lyricsColors[i].score);
    console.log(lyricsPercentages[i]);
    console.log(shade.toString());
    lyricsShades.push(shade.toString());
  };

  createLyricsGradient(lyricsColors, lyricsShades, lyricsPercentages);
});
