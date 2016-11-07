require 'json'
# watson = {"document_tone"=>
#           {"tone_categories"=>
#             [{"tones"=>[{"score"=>0.358564, "tone_id"=>"anger", "tone_name"=>"Anger"}, {"score"=>0.028033, "tone_id"=>"disgust", "tone_name"=>"Disgust"}, {"score"=>0.050703, "tone_id"=>"fear", "tone_name"=>"Fear"}, {"score"=>0.028322, "tone_id"=>"joy", "tone_name"=>"Joy"}, {"score"=>0.57065, "tone_id"=>"sadness", "tone_name"=>"Sadness"}],

#   "category_id"=>"emotion_tone", "category_name"=>"Emotion Tone"}, {"tones"=>[{"score"=>0.175983, "tone_id"=>"analytical", "tone_name"=>"Analytical"}, {"score"=>0.0, "tone_id"=>"confident", "tone_name"=>"Confident"}, {"score"=>0.51835, "tone_id"=>"tentative", "tone_name"=>"Tentative"}], "category_id"=>"language_tone", "category_name"=>"Language Tone"}, {"tones"=>[{"score"=>0.152268, "tone_id"=>"openness_big5", "tone_name"=>"Openness"}, {"score"=>0.803783, "tone_id"=>"conscientiousness_big5", "tone_name"=>"Conscientiousness"}, {"score"=>0.424229, "tone_id"=>"extraversion_big5", "tone_name"=>"Extraversion"}, {"score"=>0.9632, "tone_id"=>"agreeableness_big5", "tone_name"=>"Agreeableness"}, {"score"=>0.15962, "tone_id"=>"emotional_range_big5", "tone_name"=>"Emotional Range"}], "category_id"=>"social_tone", "category_name"=>"Social Tone"}]}, "sentences_tone"=>[{"sentence_id"=>0, "text"=>"I don't have much to give, but I don't care for gold\r\nWhat use is money, when you need someone to hold?", "input_from"=>0, "input_to"=>103, "tone_categories"=>[{"tones"=>[{"score"=>0.240822, "tone_id"=>"anger", "tone_name"=>"Anger"}, {"score"=>0.054007, "tone_id"=>"disgust", "tone_name"=>"Disgust"}, {"score"=>0.038868, "tone_id"=>"fear", "tone_name"=>"Fear"}, {"score"=>0.097274, "tone_id"=>"joy", "tone_name"=>"Joy"}, {"score"=>0.641324, "tone_id"=>"sadness", "tone_name"=>"Sadness"}], "category_id"=>"emotion_tone", "category_name"=>"Emotion Tone"}, {"tones"=>[{"score"=>0.560098, "tone_id"=>"analytical", "tone_name"=>"Analytical"}, {"score"=>0.0, "tone_id"=>"confident", "tone_name"=>"Confident"}, {"score"=>0.471477, "tone_id"=>"tentative", "tone_name"=>"Tentative"}], "category_id"=>"language_tone", "category_name"=>"Language Tone"}, {"tones"=>[{"score"=>0.030678, "tone_id"=>"openness_big5", "tone_name"=>"Openness"}, {"score"=>0.383545, "tone_id"=>"conscientiousness_big5", "tone_name"=>"Conscientiousness"}, {"score"=>0.152944, "tone_id"=>"extraversion_big5", "tone_name"=>"Extraversion"}, {"score"=>0.568081, "tone_id"=>"agreeableness_big5", "tone_name"=>"Agreeableness"}, {"score"=>0.142434, "tone_id"=>"emotional_range_big5", "tone_name"=>"Emotional Range"}], "category_id"=>"social_tone", "category_name"=>"Social Tone"}]}, {"sentence_id"=>1, "text"=>"Don't have direction, I'm just rolling down this road\r\nWaiting for you to bring me in from out the cold\r\n\r\nYou'll never know the endless nights, the rhyming of the rain,\r\nOr how it feels to fall behind and watch you call his name\r\n\r\nPack up and leave everything,\r\nDon't you see what I can bring\r\nCan't keep this beating heart at bay\r\nSet my midnight sorrow free,\r\nI will give you all of me\r\nJust leave your lover, leave him for me.", "input_from"=>104, "input_to"=>535, "tone_categories"=>[{"tones"=>[{"score"=>0.13523, "tone_id"=>"anger", "tone_name"=>"Anger"}, {"score"=>0.023007, "tone_id"=>"disgust", "tone_name"=>"Disgust"}, {"score"=>0.181421, "tone_id"=>"fear", "tone_name"=>"Fear"}, {"score"=>0.03903, "tone_id"=>"joy", "tone_name"=>"Joy"}, {"score"=>0.69938, "tone_id"=>"sadness", "tone_name"=>"Sadness"}], "category_id"=>"emotion_tone", "category_name"=>"Emotion Tone"}, {"tones"=>[{"score"=>0.096799, "tone_id"=>"analytical", "tone_name"=>"Analytical"}, {"score"=>0.0, "tone_id"=>"confident", "tone_name"=>"Confident"}, {"score"=>0.162193, "tone_id"=>"tentative", "tone_name"=>"Tentative"}], "category_id"=>"language_tone", "category_name"=>"Language Tone"}, {"tones"=>[{"score"=>0.246372, "tone_id"=>"openness_big5", "tone_name"=>"Openness"}, {"score"=>0.958368, "tone_id"=>"conscientiousness_big5", "tone_name"=>"Conscientiousness"}, {"score"=>0.218782, "tone_id"=>"extraversion_big5", "tone_name"=>"Extraversion"}, {"score"=>0.972869, "tone_id"=>"agreeableness_big5", "tone_name"=>"Agreeableness"}, {"score"=>0.17556, "tone_id"=>"emotional_range_big5", "tone_name"=>"Emotional Range"}], "category_id"=>"social_tone", "category_name"=>"Social Tone"}]}, {"sentence_id"=>2, "text"=>"Leave your lover, leave him for me.", "input_from"=>536, "input_to"=>571, "tone_categories"=>[{"tones"=>[{"score"=>0.053184, "tone_id"=>"anger", "tone_name"=>"Anger"}, {"score"=>0.022886, "tone_id"=>"disgust", "tone_name"=>"Disgust"}, {"score"=>0.026468, "tone_id"=>"fear", "tone_name"=>"Fear"}, {"score"=>0.300573, "tone_id"=>"joy", "tone_name"=>"Joy"}, {"score"=>0.639997, "tone_id"=>"sadness", "tone_name"=>"Sadness"}], "category_id"=>"emotion_tone", "category_name"=>"Emotion Tone"}, {"tones"=>[{"score"=>0.0, "tone_id"=>"analytical", "tone_name"=>"Analytical"}, {"score"=>0.0, "tone_id"=>"confident", "tone_name"=>"Confident"}, {"score"=>0.0, "tone_id"=>"tentative", "tone_name"=>"Tentative"}], "category_id"=>"language_tone", "category_name"=>"Language Tone"}, {"tones"=>[{"score"=>0.235638, "tone_id"=>"openness_big5", "tone_name"=>"Openness"}, {"score"=>0.4143, "tone_id"=>"conscientiousness_big5", "tone_name"=>"Conscientiousness"}, {"score"=>0.739407, "tone_id"=>"extraversion_big5", "tone_name"=>"Extraversion"}, {"score"=>0.720241, "tone_id"=>"agreeableness_big5", "tone_name"=>"Agreeableness"}, {"score"=>0.240869, "tone_id"=>"emotional_range_big5", "tone_name"=>"Emotional Range"}], "category_id"=>"social_tone", "category_name"=>"Social Tone"}]}, {"sentence_id"=>3, "text"=>"We sit in bars and raise our drinks to growing old\r\nOh, I'm in love with you and you will never know,\r\nBut if I can't have you I'll walk this life alone,\r\nSpare you the rising storms and let the rivers flow\r\n\r\nYou'll never know the endless nights, the rhyming of the rain\r\nOr how it feels to fall behind and watch you call his name\r\n\r\nPack up and leave everything,\r\nDon't you see what I can bring\r\nCan't keep this beating heart at bay\r\nSet my midnight sorrow free,\r\nI will give you all of me\r\nJust leave your lover, leave him for me\r\nLeave your lover, leave him for me.", "input_from"=>572, "input_to"=>1141, "tone_categories"=>[{"tones"=>[{"score"=>0.078959, "tone_id"=>"anger", "tone_name"=>"Anger"}, {"score"=>0.034246, "tone_id"=>"disgust", "tone_name"=>"Disgust"}, {"score"=>0.197302, "tone_id"=>"fear", "tone_name"=>"Fear"}, {"score"=>0.029724, "tone_id"=>"joy", "tone_name"=>"Joy"}, {"score"=>0.711603, "tone_id"=>"sadness", "tone_name"=>"Sadness"}], "category_id"=>"emotion_tone", "category_name"=>"Emotion Tone"}, {"tones"=>[{"score"=>0.053672, "tone_id"=>"analytical", "tone_name"=>"Analytical"}, {"score"=>0.0, "tone_id"=>"confident", "tone_name"=>"Confident"}, {"score"=>0.000558, "tone_id"=>"tentative", "tone_name"=>"Tentative"}], "category_id"=>"language_tone", "category_name"=>"Language Tone"}, {"tones"=>[{"score"=>0.322566, "tone_id"=>"openness_big5", "tone_name"=>"Openness"}, {"score"=>0.984248, "tone_id"=>"conscientiousness_big5", "tone_name"=>"Conscientiousness"}, {"score"=>0.617907, "tone_id"=>"extraversion_big5", "tone_name"=>"Extraversion"}, {"score"=>0.992587, "tone_id"=>"agreeableness_big5", "tone_name"=>"Agreeableness"}, {"score"=>0.354197, "tone_id"=>"emotional_range_big5", "tone_name"=>"Emotional Range"}], "category_id"=>"social_tone", "category_name"=>"Social Tone"}]}, {"sentence_id"=>4, "text"=>"Leave your lover, leave him for me.", "input_from"=>1142, "input_to"=>1177, "tone_categories"=>[{"tones"=>[{"score"=>0.053184, "tone_id"=>"anger", "tone_name"=>"Anger"}, {"score"=>0.022886, "tone_id"=>"disgust", "tone_name"=>"Disgust"}, {"score"=>0.026468, "tone_id"=>"fear", "tone_name"=>"Fear"}, {"score"=>0.300573, "tone_id"=>"joy", "tone_name"=>"Joy"}, {"score"=>0.639997, "tone_id"=>"sadness", "tone_name"=>"Sadness"}], "category_id"=>"emotion_tone", "category_name"=>"Emotion Tone"}, {"tones"=>[{"score"=>0.0, "tone_id"=>"analytical", "tone_name"=>"Analytical"}, {"score"=>0.0, "tone_id"=>"confident", "tone_name"=>"Confident"}, {"score"=>0.0, "tone_id"=>"tentative", "tone_name"=>"Tentative"}], "category_id"=>"language_tone", "category_name"=>"Language Tone"}, {"tones"=>[{"score"=>0.235638, "tone_id"=>"openness_big5", "tone_name"=>"Openness"}, {"score"=>0.4143, "tone_id"=>"conscientiousness_big5", "tone_name"=>"Conscientiousness"}, {"score"=>0.739407, "tone_id"=>"extraversion_big5", "tone_name"=>"Extraversion"}, {"score"=>0.720241, "tone_id"=>"agreeableness_big5", "tone_name"=>"Agreeableness"}, {"score"=>0.240869, "tone_id"=>"emotional_range_big5", "tone_name"=>"Emotional Range"}], "category_id"=>"social_tone", "category_name"=>"Social Tone"}]}]}

watson = {
  "document_tone": {
    "tone_categories": [ { "tones":
        [ {
            "score": 0.025329,
            "tone_id": "anger",
            "tone_name": "Anger"
          },
          {
            "score": 0.343258,
            "tone_id": "disgust",
            "tone_name": "Disgust"
          },
          {
            "score": 0.050626,
            "tone_id": "fear",
            "tone_name": "Fear"
          },
          {
            "score": 0.140675,
            "tone_id": "joy",
            "tone_name": "Joy"
          },
          {
            "score": 0.453021,
            "tone_id": "sadness",
            "tone_name": "Sadness"
          }
        ],
        "category_id": "emotion_tone",
        "category_name": "Emotion Tone"
      },
      {
        "tones": [
          {
            "score": 0.000026,
            "tone_id": "analytical",
            "tone_name": "Analytical"
          },
          {
            "score": 0,
            "tone_id": "confident",
            "tone_name": "Confident"
          },
          {
            "score": 0,
            "tone_id": "tentative",
            "tone_name": "Tentative"
          }
        ],
        "category_id": "language_tone",
        "category_name": "Language Tone"
      },
      {
        "tones": [
          {
            "score": 0.970925,
            "tone_id": "openness_big5",
            "tone_name": "Openness"
          },
          {
            "score": 0.176563,
            "tone_id": "conscientiousness_big5",
            "tone_name": "Conscientiousness"
          },
          {
            "score": 0.442703,
            "tone_id": "extraversion_big5",
            "tone_name": "Extraversion"
          },
          {
            "score": 0.039969,
            "tone_id": "agreeableness_big5",
            "tone_name": "Agreeableness"
          },
          {
            "score": 0.568182,
            "tone_id": "emotional_range_big5",
            "tone_name": "Emotional Range"
          }
        ],
        "category_id": "social_tone",
        "category_name": "Social Tone"
      }
    ]
  }
}

emotions = []
tones = watson[:document_tone][:tone_categories][0][:tones]
tones.each do |tone|
  emotions << {"name" => tone[:tone_name], "score" => tone[:score]}
end

p emotions





