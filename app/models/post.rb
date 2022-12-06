class Post < ApplicationRecord
  belongs_to :company, class_name: "User"
end
