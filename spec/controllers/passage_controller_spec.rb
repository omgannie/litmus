require 'rails_helper'

describe PassagesController do
  let(:passage) { Passage.new(body: "anything") }

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "POST #create" do
    context "when valid params are passed" do
      it "responds with status code 302" do
        post(:create, { passage: { body: "anything"} } )
        expect(response).to have_http_status 302
      end

      it "assigns the newly created passage as @passage" do
        post(:create, { passage: { body: "anything" } } )
        expect(assigns(:passage)).to eq(Passage.last)
      end

      it "redirects to the created passage" do
        post(:create, { passage: { body: "anything" } } )
        expect(response).to redirect_to '/genres/show'
      end

    end
  end
end
