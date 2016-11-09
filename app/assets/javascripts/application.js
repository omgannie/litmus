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
// $(document).ready(function(){
//   ajaxFormHandler();
// });

$(document).ready(function() {
  var emotionData = fetchEmotionScores();

  var strongest = fetchStrongestEmotion(emotionData);

  var arrayOfColors = createColors(emotionData);
  var shades = [];

  for(var i=0; i < arrayOfColors.length; i++) {
    var shade = formatHSL(arrayOfColors[i]);
    console.log(arrayOfColors[i].emotion);
    console.log(shade);
    shades.push(shade);
  };

  createGradient(arrayOfColors, shades);
});
