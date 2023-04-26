require "rails_helper"

RSpec.describe "Routing to lyrics", :type => :routing do

  it "routes /lyrics/search_lyrics to the lyrics controller" do
    expect(:get => "/lyrics/search_lyrics").
      to route_to(:controller => "lyrics", :action => "search_lyrics")
  end

end
