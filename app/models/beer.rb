class Beer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews
  has_many :orders

  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
end
