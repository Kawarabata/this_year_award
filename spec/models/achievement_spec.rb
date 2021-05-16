require 'rails_helper'

RSpec.describe Achievement, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'responses' do
    it { is_expected.to respond_to(:title) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:score) }
    it { is_expected.to respond_to(:date) }
    it { is_expected.to respond_to(:user_id) }
  end

  describe 'validations' do
    describe 'title' do
      it { is_expected.to validate_presence_of(:title) }
      it { is_expected.to validate_length_of(:title).is_at_most(50) }
    end

    describe 'description' do
      it { is_expected.to validate_length_of(:description).is_at_most(500) }
    end

    describe 'score' do
      it { is_expected.to validate_presence_of(:score) }
      it { is_expected.to validate_numericality_of(:score).only_integer.is_greater_than(0).is_less_than(101) }
    end

    describe 'date' do
      it { is_expected.to validate_presence_of(:date) }
    end
  end
end
