class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
    :jwt_authenticatable, jwt_revocation_strategy: self

  # associations
  # ---
  has_many :posts, dependent: :destroy

  # validations
  # ---
  validates :email, presence: true
  validates :email, uniqueness: true
end
