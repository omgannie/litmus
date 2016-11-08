class Emotion < ActiveRecord::Base
  validates :joy, :sadness, :anger, :disgust, :fear, :emotionable_id, :emotionable_type, presence: true

  belongs_to  :emotionable, polymorphic: true

  def self.strongest_emotion(formatted_emotions)
    formatted_emotions.max do |first_emotion, second_emotion|
      first_emotion <=> second_emotion
    end
  end

  def self.format_emotions(emotion_object)
    emotions = []
    emotions.push({ "joy" => emotion_object.joy }, { "disgust" => emotion_object.disgust }, { "anger" =>emotion_object.anger }, { "fear" => emotion_object.fear }, { "sadness" => emotion_object.sadness })
  end
end
