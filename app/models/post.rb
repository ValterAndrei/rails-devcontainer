class Post < ApplicationRecord
  # associations
  # ---
  belongs_to :user, optional: true

  # validations
  # ---
  validates :title, presence: true
end
