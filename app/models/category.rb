class Category < ApplicationRecord
    has_many :subcategories
    has_one_attached :picture
    mount_uploader :picture, AvatarUploader

end
