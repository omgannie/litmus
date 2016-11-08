require 'rails_helper'

describe SongsController do
  let(:song) { Song.create(artist_name: "animals as leaders", song_title: "cafo") }

  describe "GET #search_song" do
    it "responds with status code 200" do
      get :search_song
      expect(response).to have_http_status 200
    end
  end
end
