class User < ApplicationRecord
  has_many :achievements, dependent: :destroy
end
