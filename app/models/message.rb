class Message < ApplicationRecord 
  belongs_to :user , optional: true 
  belongs_to :room 
  belongs_to :admin_user, optional: true 
  after_create_commit { broadcast_append_to self.room } 
end