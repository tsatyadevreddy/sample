class Role < ApplicationRecord
  has_many :user_roles
  has_many :users, through: :user_roles

  validates :name, presence: true, uniqueness: true

  scope :active, ->{ where(active: false).or(where(active: nil)) } # note false is active and true is inactive
end
