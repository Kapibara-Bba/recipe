class Recipe < ApplicationRecord
  
  belongs_to :user
  attachment :profile_image
end
