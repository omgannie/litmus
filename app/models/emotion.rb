class Emotion < ActiveRecord::Base
  validates :joy, :sadness, :anger, :disgust, :fear, :emotionable_id, :emotionable_type, presence: true

  belongs_to  :emotionable, polymorphic: true
end
