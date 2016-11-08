require 'rails_helper'

describe "song validations" do

  it "should have a artist_name" do
    artist_name = "annimals as leaders"
    song = Song.create(artist_name: artist_name)
    expect(song.artist_name).to eq artist_name
  end

  it "should have a song_title" do
    song_title = "cafo"
    song = Song.create(song_title: song_title)
    expect(song.song_title).to eq song_title
  end

  it "is not valid without a artist_name" do
    song = Song.create
    expect(song).to_not be_valid
  end

  it "is not valid without a body" do
    song = Song.create
    song.artist_name = "animals as leaders"
    expect(song).to_not be_valid
  end

  it 'should return an optiones hash with valence data' do
    emotion = "Joy"
    expect(Song.map_emotions(emotion)).to eq({ options: "min_valence: 0.7"})
  end

  # describe Song, 'association' do
  #   it { should have_many(:categorizations) }
  # end


end
