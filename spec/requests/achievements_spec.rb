require 'rails_helper'

RSpec.describe 'Achievements', type: :request do
  describe 'GET /achievements' do
    context 'signed in' do
      let(:user) { create(:user) }

      before { user_login(user) }

      it 'returns http success' do
        get achievements_path
        expect(response).to have_http_status 200
      end
    end

    context 'not signed in' do
      it 'returns http redirect' do
        get achievements_path
        expect(response).to have_http_status 302
      end
    end
  end

  # describe "GET /achievements/:id" do
  #   let(:achievement) { create(:achievement) }

  #   it "returns http success" do
  #     get achievement_path(achievement.id)
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe 'GET /achievements/new' do
    context 'signed in' do
      let(:user) { create(:user) }

      before { user_login(user) }

      it 'returns http success' do
        get new_achievement_path
        expect(response).to have_http_status 200
      end
    end

    context 'not signed in' do
      it 'returns http redirect' do
        get new_achievement_path
        expect(response).to have_http_status 302
      end
    end
  end

  describe 'GET /achievements/:id/edit' do
    let(:achievement) { create(:achievement) }

    context 'signed in' do
      let(:user) { create(:user) }

      before { user_login(user) }

      it 'returns http success' do
        get edit_achievement_path(achievement.id)
        expect(response).to have_http_status 200
      end
    end

    context 'not signed in' do
      it 'returns http redirect' do
        get edit_achievement_path(achievement.id)
        expect(response).to have_http_status 302
      end
    end
  end
end
