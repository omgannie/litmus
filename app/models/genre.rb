class Genre < ActiveRecord::Base
  validates :name, presence: true

  has_many  :categorizations
  has_many  :songs, through: :categorizations
end
