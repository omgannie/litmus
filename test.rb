require 'watson-tone-analyzer'

def analyze_passage
body =
"Oh, it's you, I know
You're the one I dream of
Looks into my eyes
Take me to the clouds above

Oh, I lose control
Can't seem to get enough
When I wake from dream
Tell me is it really love?"


      init = ToneAnalyzer.new(ENV["WATSON_USERNAME"], ENV["WATSON_PASSWORD"])
      response = init.analyze(body)
end

p analyze_passage


