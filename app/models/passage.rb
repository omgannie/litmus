class Passage < ActiveRecord::Base
  include EmotionConcern
  validates :body, presence: true
end
