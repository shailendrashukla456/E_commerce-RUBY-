class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable, 
         :confirmable, 
         :trackable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  
         def self.from_omniauth(auth)
          where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.email = auth.info.email
            user.password = Devise.friendly_token[0, 20]
            # Additional user attributes can be set here
          end
        end

        has_many :orders
        has_many :add_cards
      
end
