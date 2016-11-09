require "rails_helper"

RSpec.describe "Routing to the application", :type => :routing do
  it "routes GET / to passages#index" do
    expect(:get => "/").to route_to("passages#index")
  end
end
