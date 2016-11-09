class Emotion < ActiveRecord::Base
  validates :joy, :sadness, :anger, :disgust, :fear, :emotionable_id, :emotionable_type, presence: true

  belongs_to  :emotionable, polymorphic: true

  def self.strongest_emotion(formatted_emotions)
    formatted_emotions.max { |first_emotion, second_emotion| first_emotion["score"] <=> second_emotion["score"] }["name"]
  end

  def self.strongest_matches(emotion_objects)
    format = Emotion.format_emotions(emotion_objects[0])
    strongest_emotion = Emotion.strongest_emotion(format)
    values = []
    emotion_objects.each do |emotion_object|
      values.push(emotion_object.read_attribute(strongest_emotion).to_f)
    end
    values
  end

  def self.compare_matches(emotion_object_values)
    emotion_object_values.max { |first_emotion, second_emotion| first_emotion <=> second_emotion }
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
