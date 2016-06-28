class Car < ApplicationRecord
  mount_uploader :photo, ImagUploader
end
