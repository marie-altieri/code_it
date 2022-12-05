class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = ['Coder', 'Company']
  

  has_one_attached :photo
  validates :first_name, :last_name, :username, :email, :photo, :availability, presence: true

  has_many :reviews

  def full_name
    "#{first_name} #{last_name}"
  end
end
