class Review < ApplicationRecord
  # validates :text,                 presence: true
  # validates :title,                presence: true
  # validates :photos,               presence: true
  # validates :prefecture_id ,       presence: true
  has_many :photos, dependent: :destroy
  belongs_to :prefecture
  has_many :categories, through: :category_reviews
  has_many :category_reviews, dependent: :destroy
  accepts_nested_attributes_for :category_reviews
  has_many :comments,dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :photos
end