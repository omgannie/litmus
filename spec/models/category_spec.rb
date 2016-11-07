require 'rails_helper'

describe "categorization validations" do
  category = Categorization.create

  it "should have a song_id" do
    song_id = 1
    cat = Categorization.create(song_id: song_id)
    expect(cat.song_id).to eq song_id
  end

  it "should have a genre_id" do
    genre_id = 1
    cat = Categorization.create(genre_id: genre_id)
    expect(cat.genre_id).to eq genre_id
  end

  it "is not valid without a song_id" do
    expect(category).to_not be_valid
  end

  it "is not valid without a genre_id" do
    category.song_id = 1
    expect(category).to_not be_valid
  end
end


