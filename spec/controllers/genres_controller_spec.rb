require 'rails_helper'

describe GenresController do
let(:genre) { Genre.create(name: "rock", categories: ["hard rock"], has_lyrics: true) }
  describe "POST #show" do
    it "responds with status code 200" do
      get :show, { id: genre.id }
      expect(response).to have_http_status 200
    end

    it "assigns the correct genre as @genre" do
      get :show, { id: genre.id }
      expect(assigns(:genre)).to eq(@genre_options)
    end

    it "renders the :show template" do
      get :show, { id: genre.id }
      expect(response).to render_template(:show)
    end
  end
end
