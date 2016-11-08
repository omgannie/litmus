require 'rails_helper'

describe "emotion validations" do
  emotion = Emotion.create

  it "should have a joy" do
    joy_score = 0.1
    emo = Emotion.create(joy: joy_score)
    expect(emo.joy).to eq joy_score
  end

  it "should have a sadness" do
    sadness_score = 0.1
    emo = Emotion.create(sadness: sadness_score)
    expect(emo.sadness).to eq sadness_score
  end

  it "should have a anger" do
    anger_score = 0.1
    emo = Emotion.create(anger: anger_score)
    expect(emo.anger).to eq anger_score
  end

  it "should have a disgust" do
    disgust_score = 0.1
    emo = Emotion.create(disgust: disgust_score)
    expect(emo.disgust).to eq disgust_score
  end

  it "should have a fear" do
    fear_score = 0.1
    emo = Emotion.create(fear: fear_score)
    expect(emo.fear).to eq fear_score
  end

  it "should have a emotionable_id" do
    emotionable_id_score = 1
    emo = Emotion.create(emotionable_id: emotionable_id_score)
    expect(emo.emotionable_id).to eq emotionable_id_score
  end

  it "is not valid without a attributes" do
    emotion = Emotion.create
    expect(emotion).to_not be_valid
  end

  it "is not valid without a joy" do
    emotion = Emotion.create
    expect(emotion).to_not be_valid
  end


  # it "is not valid without a joy" do
  #   lyric = Lyric.create
  #   lyric.song_id = 1
  #   expect(lyric).to_not be_valid
  # end
end
