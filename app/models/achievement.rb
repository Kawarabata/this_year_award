class Achievement < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 500 }
  validates :score, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 101 }
  validates :date, presence: true
  validates :user_id, presence: true
end
