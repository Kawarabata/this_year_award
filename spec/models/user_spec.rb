require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:achievements) }
  end

  describe 'responses' do
    it { is_expected.to respond_to(:provider) }
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:image) }
    it { is_expected.to respond_to(:oauth_token) }
    it { is_expected.to respond_to(:oauth_expires_at) }
  end

  describe 'validations' do
    describe 'provider' do
      it { is_expected.to validate_presence_of(:provider) }
    end

    describe 'name' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_length_of(:name).is_at_most(30) }
    end

    describe 'email' do
      it { is_expected.to validate_presence_of(:email) }
    end
  end
end
