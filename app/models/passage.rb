class Passage < ActiveRecord::Base
  validates :body, presence: true

  has_one :emotion, as: :emotionable
end
