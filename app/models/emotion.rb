class Emotion < ActiveRecord::Base
  validates :joy, :sadness, :anger, :disgust, :fear, :emotionable_id, :emotionable_type, presence: true

  belongs_to  :emotionable, polymorphic: true

  def self.strongest_emotion(formatted_emotions)
    formatted_emotions.max { |first_emotion, second_emotion| first_emotion["score"] <=> second_emotion["score"] }["name"]
  end

  def self.format_emotions(emotion_object)
    emotions = []
    emotions.push(
      { "name" => "joy", "score" => emotion_object.joy },
      { "name" => "disgust", "score" => emotion_object.disgust },
      { "name" => "anger",  "score" => emotion_object.anger },
      { "name" => "fear", "score" => emotion_object.fear },
      { "name" => "sadness", "score" => emotion_object.sadness })
  end
end
