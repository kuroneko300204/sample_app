require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  before do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "should get root" do
    it "returns http success" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /home" do
    it "returns http success" do
      get "/static_pages/home"
      expect(response).to have_http_status(:success)
      expect(response.body).to include "Home | #{@base_title}"
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get "/static_pages/help"
      expect(response).to have_http_status(:success)
      expect(response.body).to include "Help | #{@base_title}"
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/static_pages/about"
      expect(response).to have_http_status(:success)
      expect(response.body).to include "About | #{@base_title}"
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/static_pages/contact"
      expect(response).to have_http_status(:success)
      expect(response.body).to include "Contact | #{@base_title}"
    end
  end
end
