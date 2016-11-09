require "rails_helper"

RSpec.describe "Routing to songs", :type => :routing do

  it "routes GET /songs/1 to songs#show" do
    expect(:get => "/songs/1").to route_to("songs#show", :id => "1")
  end

  it "routes /songs/search_song to the /songs/search_song controller" do
    expect(:get => "/songs/search_song").
      to route_to(:controller => "songs", :action => "search_song")
  end

end


