class User < ActiveRecord::Base
  include Clearance::User
  attr_accessor :remember_token #:image
  has_many :authentications, dependent: :destroy
  has_many :listings

	before_save { self.email = email.downcase }


	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, 	presence: true,
						length: { maximum: 50 }
	validates :email, 	presence: true,
						length: { maximum: 255 },
						format: { with: VALID_EMAIL_REGEX },
						uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }
	# has_secure_password

  #mount_uploader :profile_photo, ProfilePhotoUploader

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  # def remember
  # 	self.remember_token = User.new_token
  # 	update_attribute(remember_digest: User.digest(self.remember_token))
  # end

  # Returns true if the given token matches the digest.
  # Returns true if the given token matches the digest.
  # def authenticated?(remember_token)
  #   return false if remember_digest.nil?
  #   BCrypt::Password.new(remember_digest).is_password?(remember_token)
  # end

  # Forgets a user.
  # def forget
  #   update_attribute(:remember_digest, nil)
  # end



##############################################
# Additional Log-ins 
    def self.create_with_auth_and_hash(authentication, auth_hash)
      user = self.create!(
        name: auth_hash["name"],
        email: auth_hash["extra"]["raw_info"]["email"]
      )
      user.authentications << authentication
      return user
    end

    # grab fb_token to access Facebook for user data
    def fb_token
      x = self.authentications.find_by(provider: 'facebook')
      return x.token unless x.nil?
    end

   def self.create_with_auth_and_hash(authentication, auth_hash)
      user = self.create!(
        name: auth_hash["name"],
        email: auth_hash["extra"]["raw_info"]["email"]
      )
      user.authentications << authentication
      return user
    end

      #grab fb_token to access Facebook for user data
     def fb_token
       x = self.authentications.find_by(provider: 'google')
       return x.token unless x.nil?
     end
  end

  

  