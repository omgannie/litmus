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

  var strongestPassage = fetchStrongestEmotionFromPassage(passageData);

  var arrayOfColors = createColors(passageData);

  var shades = [];

  var percentages = percentageConversion(passageData);

  for(var i=0; i < arrayOfColors.length; i++) {
    var shade = formatHSL(arrayOfColors[i]);
    console.log(arrayOfColors[i].emotion);
    console.log(arrayOfColors[i].score);
    console.log(percentages[i]);
    console.log(shade.toString());
    shades.push(shade.toString());
  };

  createPassageGradient(arrayOfColors, shades, percentages);
});
