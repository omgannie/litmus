require 'rails_helper'

describe "genre validations" do

  it "should have a name" do
    name = "rock"
    genre = Genre.create(name: name)
    expect(genre.name).to eq name
  end

  it "is not valid without a name" do
    genre = Genre.create
    expect(genre).to_not be_valid
  end
end
