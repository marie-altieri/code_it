class Project < ApplicationRecord
  belongs_to :coder, class_name: "User"
  belongs_to :company, class_name: "User"
end
