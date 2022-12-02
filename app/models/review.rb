class Review < ApplicationRecord
  belongs_to :user
  validates :content, length: {minimum: 5}
end