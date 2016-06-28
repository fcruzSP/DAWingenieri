class Recipe < ApplicationRecord
  validates  :nam_recipes, presence: true
  validates  :ingredients, presence: true
  validates  :preparation, presence: true
  validates  :state, presence: true

  belongs_to :user

  mount_uploader :photo, ImagUploader
end


