require "rails_helper"

RSpec.describe "Routing to passages", :type => :routing do
  it "routes GET /passages to passages#index" do
    expect(:get => "/passages").to route_to("passages#index")
  end

  it "routes POST /passages to passages#create" do
    expect(:post => "/passages").to route_to("passages#create")
  end

end
