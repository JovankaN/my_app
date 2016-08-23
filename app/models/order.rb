class Order < ApplicationRecord
  has_many :product
  belongs_to :user
end