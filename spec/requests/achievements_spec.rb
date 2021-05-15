require 'rails_helper'

RSpec.describe "Achievements", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/achievements"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /:id" do
    let(:achievement) { create(:achievement) }

    it "returns http success" do
      get achievement_path(achievement.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/achievements/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /:id/edit" do
    it "returns http success" do
      get "/achievements/1/edit"
      expect(response).to have_http_status(:success)
    end
  end
end
