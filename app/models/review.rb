class Review < ApplicationRecord
  # validates :text,                 presence: true
  # validates :title,                presence: true
  # validates :photos,               presence: true
  # validates :prefecture_id ,       presence: true
  has_many :photos, dependent: :destroy
  belongs_to :prefecture
  has_many :category_reviews, dependent: :destroy
  has_many :categories, through: :category_reviews
  accepts_nested_attributes_for :category_reviews
  has_many :comments,dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :photos

  def self.ransackable_attributes auth_object = nil
    %w[category_id]
  end

  def self.ransackable_associations auth_object = nil
    []
  end
end