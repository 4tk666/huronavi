class Review < ApplicationRecord
  # validates :text,                 presence: true
  # validates :title,                presence: true
  # validates :photos,               presence: true
  # validates :prefecture_id ,       presence: true
  has_many :likes, dependent: :destroy
  has_many :photos, dependent: :destroy
  belongs_to :prefecture
  accepts_nested_attributes_for :photos
end
