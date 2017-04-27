class Bartender < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
