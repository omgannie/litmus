require "rails_helper"

RSpec.describe "Routing to genres", :type => :routing do

  it "routes GET /genres/1 to genres#show" do
    expect(:get => "/genres/1").to route_to("genres#show", :id => "1")
  end

end
