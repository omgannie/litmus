watson = [{"name"=>"Anger", "score"=>0.246667}, {"name"=>"Disgust", "score"=>0.001433}, {"name"=>"Fear", "score"=>0.045739}, {"name"=>"Joy", "score"=>0.025661}, {"name"=>"Sadness", "score"=>0.756575}]

watson_database = {joy: 0, sadness: 0, anger: 0, disgust: 0, fear: 0}

watson.each do |emotion|
  emotion.each do |k, v|
    if v == "Joy"
      watson_database[:joy] = emotion["score"]
    elsif v == "Anger"
      watson_database[:anger] = emotion["score"]
    elsif v == "Disgust"
      watson_database[:disgust] = emotion["score"]
    elsif v == "Sadness"
      watson_database[:sadness] = emotion["score"]
    elsif v == "Fear"
      watson_database[:fear] = emotion["score"]
    end
  end
end

p watson_database


