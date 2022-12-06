class Post < ApplicationRecord
  belongs_to :company, class_name: "User"
  validates :deadline, presence: true
  validates :description, presence: true
  validates :name, presence: true
end
