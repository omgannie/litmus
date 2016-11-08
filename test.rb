test = [{"name"=>"Anger", "score"=>0.079879}, {"name"=>"Disgust", "score"=>0.040404}, {"name"=>"Fear", "score"=>0.013792}, {"name"=>"Joy", "score"=>0.012911}, {"name"=>"Sadness", "score"=>0.887427}]


  def primary_emotion(emotion_list)
    emotion_list.max { |emotion_1, emotion_2| emotion_1["score"] <=> emotion_2["score"] }["name"]
  end

p primary_emotion(test)
