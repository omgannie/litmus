class Passage < ActiveRecord::Base
  include EmotionConcern
  validates :body, presence: true

  #REFACTOR: Replace dependencies upon this method to the similar method in the Emotion model
  def self.primary_emotion(emotion_list)
    emotion_list.max { |emotion_1, emotion_2| emotion_1["score"] <=> emotion_2["score"] }["name"]
  end
end
