class Plant < ApplicationRecord
  mount_uploader :image, ImageUploader
end
