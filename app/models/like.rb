class Like < ApplicationRecord 
  belongs_to :review, counter_cache: :like
  belongs_to :user
end
