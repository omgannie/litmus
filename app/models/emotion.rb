class Emotion < ActiveRecord::Base
  scope :recent, -> { order("created_at DESC").limit(5) }

  validates :joy, :sadness, :anger, :disgust, :fear, :emotionable_id, :emotionable_type, presence: true

  belongs_to  :emotionable, polymorphic: true

  def strongest_emotion
    formatted_emotions = Emotion.format_emotions(self)
    Emotion.primary_emotion(formatted_emotions)
  end

  def self.primary_emotion(formatted_emotions)
    formatted_emotions.max { |first_emotion, second_emotion| first_emotion["score"] <=> second_emotion["score"] }["name"]
  end

  def self.strongest_matches(emotion_objects)
    primary_emotion = Passage.last.emotion.strongest_emotion

    values = []

    emotion_objects.each do |emotion_object|
      values.push(emotion_object.read_attribute(primary_emotion).to_f)
    end

    values
  end

  def self.compare_matches(emotion_object_values)
    emotion_object_values.max { |first_emotion, second_emotion| first_emotion <=> second_emotion }
  end

  def self.format_emotions(emotion_object)
    emotions = []
    emotions.push(
      { "name" => "joy", "score" => emotion_object.joy.to_f },
      { "name" => "disgust", "score" => emotion_object.disgust.to_f },
      { "name" => "anger",  "score" => emotion_object.anger.to_f },
      { "name" => "fear", "score" => emotion_object.fear.to_f },
      { "name" => "sadness", "score" => emotion_object.sadness.to_f })
  end
end
