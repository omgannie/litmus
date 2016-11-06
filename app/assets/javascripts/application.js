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

$(document).ready(function(){
  // load buttons for testing
  addWatsonTestButtonForPassage();
  addWatsonTestButtonForLyrics();

  // event listeners for buttons
  testPassageButton();
  testLyricsButton();
});

// load example data to test with
// simulation of Watson data output for passages
var passagesData = { "document_tone": {
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

// simulation of Lyrics data from Watson
