require 'rails_helper'

describe "Lyric validations" do

  it "should have a song_id" do
    song_id = 1
    lyric = Lyric.create(song_id: song_id)
    expect(lyric.song_id).to eq song_id
  end

  it "should have a body" do
    body = "anything"
    lyric = Lyric.create(body: body)
    expect(lyric.body).to eq body
  end

  it "is not valid without a song_id" do
    lyric = Lyric.create
    expect(lyric).to_not be_valid
  end

  it "is not valid without a body" do
    lyric = Lyric.create
    lyric.song_id = 1
    expect(lyric).to_not be_valid
  end
end
