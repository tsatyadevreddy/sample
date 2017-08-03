class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles
  
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
