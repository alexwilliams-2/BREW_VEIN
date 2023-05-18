class Order < ApplicationRecord
  belongs_to :beer
  # has_many :beers
  belongs_to :user
end
