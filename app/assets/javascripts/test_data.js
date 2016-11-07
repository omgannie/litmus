// load example data to test with
// simulation of Watson data output for passages
var passageData = {
  "document_tone": {
    "tone_categories": [
      {
        "tones": [
          {
            "score": 0.428389,
            "tone_id": "anger",
            "tone_name": "Anger"
          },
          {
            "score": 0.106887,
            "tone_id": "disgust",
            "tone_name": "Disgust"
          },
          {
            "score": 0.135014,
            "tone_id": "fear",
            "tone_name": "Fear"
          },
          {
            "score": 0.001523,
            "tone_id": "joy",
            "tone_name": "Joy"
          },
          {
            "score": 0.435462,
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
            "score": 0.793847,
            "tone_id": "analytical",
            "tone_name": "Analytical"
          },
          {
            "score": 0,
            "tone_id": "confident",
            "tone_name": "Confident"
          },
          {
            "score": 0.69292,
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
            "score": 0.852823,
            "tone_id": "openness_big5",
            "tone_name": "Openness"
          },
          {
            "score": 0.006114,
            "tone_id": "conscientiousness_big5",
            "tone_name": "Conscientiousness"
          },
          {
            "score": 0.036792,
            "tone_id": "extraversion_big5",
            "tone_name": "Extraversion"
          },
          {
            "score": 0.247625,
            "tone_id": "agreeableness_big5",
            "tone_name": "Agreeableness"
          },
          {
            "score": 0.115463,
            "tone_id": "emotional_range_big5",
            "tone_name": "Emotional Range"
          }
        ],
        "category_id": "social_tone",
        "category_name": "Social Tone"
      }
    ]
  },
  "sentences_tone": [
    {
      "sentence_id": 0,
      "text": "“Whenever you feel like criticizing any one,” he told me, “just remember that all the people in this world haven’t had the advantages that you’ve had.”",
      "input_from": 0,
      "input_to": 151,
      "tone_categories": [
        {
          "tones": [
            {
              "score": 0.043758,
              "tone_id": "anger",
              "tone_name": "Anger"
            },
            {
              "score": 0.179225,
              "tone_id": "disgust",
              "tone_name": "Disgust"
            },
            {
              "score": 0.023154,
              "tone_id": "fear",
              "tone_name": "Fear"
            },
            {
              "score": 0.072952,
              "tone_id": "joy",
              "tone_name": "Joy"
            },
            {
              "score": 0.739734,
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
              "score": 0.687768,
              "tone_id": "analytical",
              "tone_name": "Analytical"
            },
            {
              "score": 0,
              "tone_id": "confident",
              "tone_name": "Confident"
            },
            {
              "score": 0.379998,
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
              "score": 0.552511,
              "tone_id": "openness_big5",
              "tone_name": "Openness"
            },
            {
              "score": 0.890307,
              "tone_id": "conscientiousness_big5",
              "tone_name": "Conscientiousness"
            },
            {
              "score": 0.456544,
              "tone_id": "extraversion_big5",
              "tone_name": "Extraversion"
            },
            {
              "score": 0.937547,
              "tone_id": "agreeableness_big5",
              "tone_name": "Agreeableness"
            },
            {
              "score": 0.598528,
              "tone_id": "emotional_range_big5",
              "tone_name": "Emotional Range"
            }
          ],
          "category_id": "social_tone",
          "category_name": "Social Tone"
        }
      ]
    },
    {
      "sentence_id": 1,
      "text": "He didn’t say any more, but we’ve always been unusually communicative in a reserved way, and I understood that he meant a great deal more than that.",
      "input_from": 152,
      "input_to": 300,
      "tone_categories": [
        {
          "tones": [
            {
              "score": 0.185245,
              "tone_id": "anger",
              "tone_name": "Anger"
            },
            {
              "score": 0.087023,
              "tone_id": "disgust",
              "tone_name": "Disgust"
            },
            {
              "score": 0.08418,
              "tone_id": "fear",
              "tone_name": "Fear"
            },
            {
              "score": 0.089506,
              "tone_id": "joy",
              "tone_name": "Joy"
            },
            {
              "score": 0.634922,
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
              "score": 0.602762,
              "tone_id": "analytical",
              "tone_name": "Analytical"
            },
            {
              "score": 0.226396,
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
              "score": 0.694331,
              "tone_id": "openness_big5",
              "tone_name": "Openness"
            },
            {
              "score": 0.378233,
              "tone_id": "conscientiousness_big5",
              "tone_name": "Conscientiousness"
            },
            {
              "score": 0.032672,
              "tone_id": "extraversion_big5",
              "tone_name": "Extraversion"
            },
            {
              "score": 0.768142,
              "tone_id": "agreeableness_big5",
              "tone_name": "Agreeableness"
            },
            {
              "score": 0.663775,
              "tone_id": "emotional_range_big5",
              "tone_name": "Emotional Range"
            }
          ],
          "category_id": "social_tone",
          "category_name": "Social Tone"
        }
      ]
    },
    {
      "sentence_id": 2,
      "text": "In consequence, I’m inclined to reserve all judgments, a habit that has opened up many curious natures to me and also made me the victim of not a few veteran bores.",
      "input_from": 301,
      "input_to": 465,
      "tone_categories": [
        {
          "tones": [
            {
              "score": 0.087034,
              "tone_id": "anger",
              "tone_name": "Anger"
            },
            {
              "score": 0.426877,
              "tone_id": "disgust",
              "tone_name": "Disgust"
            },
            {
              "score": 0.094007,
              "tone_id": "fear",
              "tone_name": "Fear"
            },
            {
              "score": 0.084846,
              "tone_id": "joy",
              "tone_name": "Joy"
            },
            {
              "score": 0.422737,
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
              "score": 0.762356,
              "tone_id": "analytical",
              "tone_name": "Analytical"
            },
            {
              "score": 0.449032,
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
              "score": 0.878712,
              "tone_id": "openness_big5",
              "tone_name": "Openness"
            },
            {
              "score": 0.036767,
              "tone_id": "conscientiousness_big5",
              "tone_name": "Conscientiousness"
            },
            {
              "score": 0.322119,
              "tone_id": "extraversion_big5",
              "tone_name": "Extraversion"
            },
            {
              "score": 0.482566,
              "tone_id": "agreeableness_big5",
              "tone_name": "Agreeableness"
            },
            {
              "score": 0.046495,
              "tone_id": "emotional_range_big5",
              "tone_name": "Emotional Range"
            }
          ],
          "category_id": "social_tone",
          "category_name": "Social Tone"
        }
      ]
    },
    {
      "sentence_id": 3,
      "text": "The abnormal mind is quick to detect and attach itself to this quality when it appears in a normal person, and so it came about that in college I was unjustly accused of being a politician, because I was privy to the secret griefs of wild, unknown men.",
      "input_from": 466,
      "input_to": 718,
      "tone_categories": [
        {
          "tones": [
            {
              "score": 0.228935,
              "tone_id": "anger",
              "tone_name": "Anger"
            },
            {
              "score": 0.191476,
              "tone_id": "disgust",
              "tone_name": "Disgust"
            },
            {
              "score": 0.515192,
              "tone_id": "fear",
              "tone_name": "Fear"
            },
            {
              "score": 0.099231,
              "tone_id": "joy",
              "tone_name": "Joy"
            },
            {
              "score": 0.107103,
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
              "score": 0.401214,
              "tone_id": "analytical",
              "tone_name": "Analytical"
            },
            {
              "score": 0,
              "tone_id": "confident",
              "tone_name": "Confident"
            },
            {
              "score": 0.367943,
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
              "score": 0.790443,
              "tone_id": "openness_big5",
              "tone_name": "Openness"
            },
            {
              "score": 0.003275,
              "tone_id": "conscientiousness_big5",
              "tone_name": "Conscientiousness"
            },
            {
              "score": 0.075819,
              "tone_id": "extraversion_big5",
              "tone_name": "Extraversion"
            },
            {
              "score": 0.026479,
              "tone_id": "agreeableness_big5",
              "tone_name": "Agreeableness"
            },
            {
              "score": 0.223222,
              "tone_id": "emotional_range_big5",
              "tone_name": "Emotional Range"
            }
          ],
          "category_id": "social_tone",
          "category_name": "Social Tone"
        }
      ]
    },
    {
      "sentence_id": 4,
      "text": "Most of the confidences were unsought — frequently I have feigned sleep, preoccupation, or a hostile levity when I realized by some unmistakable sign that an intimate revelation was quivering on the horizon; for the intimate revelations of young men, or at least the terms in which they express them, are usually plagiaristic and marred by obvious suppressions.",
      "input_from": 719,
      "input_to": 1080,
      "tone_categories": [
        {
          "tones": [
            {
              "score": 0.376014,
              "tone_id": "anger",
              "tone_name": "Anger"
            },
            {
              "score": 0.176658,
              "tone_id": "disgust",
              "tone_name": "Disgust"
            },
            {
              "score": 0.218088,
              "tone_id": "fear",
              "tone_name": "Fear"
            },
            {
              "score": 0.010165,
              "tone_id": "joy",
              "tone_name": "Joy"
            },
            {
              "score": 0.330193,
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
              "score": 0.690869,
              "tone_id": "analytical",
              "tone_name": "Analytical"
            },
            {
              "score": 0,
              "tone_id": "confident",
              "tone_name": "Confident"
            },
            {
              "score": 0.315156,
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
              "score": 0.947401,
              "tone_id": "openness_big5",
              "tone_name": "Openness"
            },
            {
              "score": 0.050058,
              "tone_id": "conscientiousness_big5",
              "tone_name": "Conscientiousness"
            },
            {
              "score": 0.1668,
              "tone_id": "extraversion_big5",
              "tone_name": "Extraversion"
            },
            {
              "score": 0.046427,
              "tone_id": "agreeableness_big5",
              "tone_name": "Agreeableness"
            },
            {
              "score": 0.218429,
              "tone_id": "emotional_range_big5",
              "tone_name": "Emotional Range"
            }
          ],
          "category_id": "social_tone",
          "category_name": "Social Tone"
        }
      ]
    },
    {
      "sentence_id": 5,
      "text": "Reserving judgments is a matter of infinite hope.",
      "input_from": 1081,
      "input_to": 1130,
      "tone_categories": [
        {
          "tones": [
            {
              "score": 0.087793,
              "tone_id": "anger",
              "tone_name": "Anger"
            },
            {
              "score": 0.088222,
              "tone_id": "disgust",
              "tone_name": "Disgust"
            },
            {
              "score": 0.195215,
              "tone_id": "fear",
              "tone_name": "Fear"
            },
            {
              "score": 0.397189,
              "tone_id": "joy",
              "tone_name": "Joy"
            },
            {
              "score": 0.277052,
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
              "score": 0.116314,
              "tone_id": "analytical",
              "tone_name": "Analytical"
            },
            {
              "score": 0,
              "tone_id": "confident",
              "tone_name": "Confident"
            },
            {
              "score": 0.88939,
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
              "score": 0.633971,
              "tone_id": "openness_big5",
              "tone_name": "Openness"
            },
            {
              "score": 0.246247,
              "tone_id": "conscientiousness_big5",
              "tone_name": "Conscientiousness"
            },
            {
              "score": 0.102339,
              "tone_id": "extraversion_big5",
              "tone_name": "Extraversion"
            },
            {
              "score": 0.376073,
              "tone_id": "agreeableness_big5",
              "tone_name": "Agreeableness"
            },
            {
              "score": 0.041175,
              "tone_id": "emotional_range_big5",
              "tone_name": "Emotional Range"
            }
          ],
          "category_id": "social_tone",
          "category_name": "Social Tone"
        }
      ]
    },
    {
      "sentence_id": 6,
      "text": "I am still a little afraid of missing something if I forget that, as my father snobbishly suggested, and I snobbishly repeat, a sense of the fundamental decencies is parcelled out unequally at birth.",
      "input_from": 1131,
      "input_to": 1330,
      "tone_categories": [
        {
          "tones": [
            {
              "score": 0.082428,
              "tone_id": "anger",
              "tone_name": "Anger"
            },
            {
              "score": 0.03058,
              "tone_id": "disgust",
              "tone_name": "Disgust"
            },
            {
              "score": 0.795588,
              "tone_id": "fear",
              "tone_name": "Fear"
            },
            {
              "score": 0.022982,
              "tone_id": "joy",
              "tone_name": "Joy"
            },
            {
              "score": 0.118379,
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
              "score": 0.482451,
              "tone_id": "analytical",
              "tone_name": "Analytical"
            },
            {
              "score": 0,
              "tone_id": "confident",
              "tone_name": "Confident"
            },
            {
              "score": 0.236367,
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
              "score": 0.716313,
              "tone_id": "openness_big5",
              "tone_name": "Openness"
            },
            {
              "score": 0,
              "tone_id": "conscientiousness_big5",
              "tone_name": "Conscientiousness"
            },
            {
              "score": 0.001493,
              "tone_id": "extraversion_big5",
              "tone_name": "Extraversion"
            },
            {
              "score": 0.06522,
              "tone_id": "agreeableness_big5",
              "tone_name": "Agreeableness"
            },
            {
              "score": 0.006059,
              "tone_id": "emotional_range_big5",
              "tone_name": "Emotional Range"
            }
          ],
          "category_id": "social_tone",
          "category_name": "Social Tone"
        }
      ]
    }
  ]
}

// simulation of Lyrics data from Watson
var lyricsData =
{
  "document_tone": {
    "tone_categories": [
      {
        "tones": [
          {
            "score": 0.24641,
            "tone_id": "anger",
            "tone_name": "Anger"
          },
          {
            "score": 0.002099,
            "tone_id": "disgust",
            "tone_name": "Disgust"
          },
          {
            "score": 0.020018,
            "tone_id": "fear",
            "tone_name": "Fear"
          },
          {
            "score": 0.004727,
            "tone_id": "joy",
            "tone_name": "Joy"
          },
          {
            "score": 0.811754,
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
            "score": 0,
            "tone_id": "analytical",
            "tone_name": "Analytical"
          },
          {
            "score": 0,
            "tone_id": "confident",
            "tone_name": "Confident"
          },
          {
            "score": 0.000786,
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
            "score": 0.549935,
            "tone_id": "openness_big5",
            "tone_name": "Openness"
          },
          {
            "score": 0,
            "tone_id": "conscientiousness_big5",
            "tone_name": "Conscientiousness"
          },
          {
            "score": 0.00534,
            "tone_id": "extraversion_big5",
            "tone_name": "Extraversion"
          },
          {
            "score": 0.64797,
            "tone_id": "agreeableness_big5",
            "tone_name": "Agreeableness"
          },
          {
            "score": 0.001246,
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
