class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook, :twitter, :google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :name, :location, :first_name, :last_name, :remote_userimage_url, :urls, :oauth_token, :oauth_secret
  # attr_accessible :title, :body
  has_many :orbituarysites
  has_many :memories
  has_many :condolences
  has_many :orbiturer_share_images
  
  mount_uploader :userimage, UserimageUploader
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  user = User.where(:provider => auth.provider, :uid => auth.uid).first
  unless user
    Rails.logger.info auth
    user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20],
                         first_name:auth.info.first_name,
                         last_name:auth.info.last_name,
                         oauth_token:auth["credentials"]["token"],
                         oauth_secret:auth["credentials"]["secret"]
                         )
  end
  user
end

def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
 
  user = User.where(:provider => auth.provider, :uid => auth.uid).first
  if user
    return user
  else
    registered_user = User.where(:email => auth.uid + "@twitter.com").first
    if registered_user
      return registered_user
    else
      Rails.logger.info auth
      user = User.create(name:auth.info.name,
        provider:auth.provider,
        uid:auth.uid,
        email:auth.uid+"@twitter.com",
        password:Devise.friendly_token[0,20],
        first_name:auth.info.name,
        last_name:auth.info.nickname,
        remote_userimage_url:auth.info.image,
        urls:auth.info.urls.Twitter,
        oauth_token:auth["credentials"]["token"],
        oauth_secret:auth["credentials"]["secret"]
        
      )
    end
  end
end

def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(name: data["name"],
          provider:access_token.provider,
          email: data["email"],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20],
          first_name:auth.info.first_name,
          last_name:auth.info.last_name
          
        )
      end
   end
end
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
