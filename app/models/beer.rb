class Beer < ApplicationRecord
  belongs_to :user
  # changed from has_many :orders
  # belongs_to :order

  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
end
