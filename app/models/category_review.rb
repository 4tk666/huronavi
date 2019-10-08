class CategoryReview < ApplicationRecord
  belongs_to :review, optional: true
  belongs_to :category, optional: true
end
