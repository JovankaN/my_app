class Comment < ApplicationRecord
  #Database relationship
  belongs_to :user
  belongs_to :product
  #scope for displaying comments in descending order
  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(:rating) }
#Validations
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }
end
