class Category < ApplicationRecord
  has_many :reviews, through: :category_reviews
end
