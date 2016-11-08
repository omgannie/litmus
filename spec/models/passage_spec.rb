require 'rails_helper'

describe "passage validations" do

  it "should have a body" do
    body = "anything"
    passage = Passage.create(body: body)
    expect(passage.body).to eq body
  end

  it "is not valid without a body" do
    passage = Passage.create
    expect(passage).to_not be_valid
  end

  it 'should return a parsed watson object' do
    test = {"document_tone"=>{"tone_categories"=>[{"tones"=>[{"score"=>0.079879, "tone_id"=>"anger", "tone_name"=>"Anger"}, {"score"=>0.040404, "tone_id"=>"disgust", "tone_name"=>"Disgust"}, {"score"=>0.013792, "tone_id"=>"fear", "tone_name"=>"Fear"}, {"score"=>0.012911, "tone_id"=>"joy", "tone_name"=>"Joy"}, {"score"=>0.887427, "tone_id"=>"sadness", "tone_name"=>"Sadness"}], "category_id"=>"emotion_tone", "category_name"=>"Emotion Tone"}, {"tones"=>[{"score"=>0.0, "tone_id"=>"analytical", "tone_name"=>"Analytical"}, {"score"=>0.0, "tone_id"=>"confident", "tone_name"=>"Confident"}, {"score"=>0.0, "tone_id"=>"tentative", "tone_name"=>"Tentative"}], "category_id"=>"language_tone", "category_name"=>"Language Tone"}, {"tones"=>[{"score"=>0.035815, "tone_id"=>"openness_big5", "tone_name"=>"Openness"}, {"score"=>0.256127, "tone_id"=>"conscientiousness_big5", "tone_name"=>"Conscientiousness"}, {"score"=>0.48257, "tone_id"=>"extraversion_big5", "tone_name"=>"Extraversion"}, {"score"=>0.5808, "tone_id"=>"agreeableness_big5", "tone_name"=>"Agreeableness"}, {"score"=>0.004017, "tone_id"=>"emotional_range_big5", "tone_name"=>"Emotional Range"}], "category_id"=>"social_tone", "category_name"=>"Social Tone"}]}}

    expect(Passage.emotion_tone(test)).to eq([{"name"=>"Anger", "score"=>0.079879}, {"name"=>"Disgust", "score"=>0.040404}, {"name"=>"Fear", "score"=>0.013792}, {"name"=>"Joy", "score"=>0.012911}, {"name"=>"Sadness", "score"=>0.887427}])
  end

  it 'should return a parsed watson object formatted to create an emotion object' do
    emotion = [{"name"=>"Anger", "score"=>0.079879}, {"name"=>"Disgust", "score"=>0.040404}, {"name"=>"Fear", "score"=>0.013792}, {"name"=>"Joy", "score"=>0.012911}, {"name"=>"Sadness", "score"=>0.887427}]

    expect(Passage.format_watson_data(emotion)).to eq({:anger=>0.079879, :disgust=>0.040404, :fear=>0.013792, :joy=>0.012911, :sadness=>0.887427})
  end

  it "should return the strongest emotion" do
    emotion_array = [{"name"=>"Anger", "score"=>0.079879}, {"name"=>"Disgust", "score"=>0.040404}, {"name"=>"Fear", "score"=>0.013792}, {"name"=>"Joy", "score"=>0.012911}, {"name"=>"Sadness", "score"=>0.887427}]

    expect(Passage.primary_emotion(emotion_array)).to eq("Sadness")
  end
end
