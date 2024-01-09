class Subcategory < ApplicationRecord
  belongs_to :category
  mount_uploader :picture, AvatarUploader
  

  attr_accessor :cards_count
  has_many :orders
  has_many :add_cards
end
