class User < ActiveRecord::Base
 has_secure_password
 validates :email, presence: true, length: { in: 5..255 }, uniqueness: { case_sensitive: false}
 validates :password, presence: true, length: { in: 6..55}, confirmation: true

 has_many :fashionposts
 has_many :comments


attr_reader :password 


 def password=(unencrypted_password)
      unless unencrypted_password.empty?
        @password = unencrypted_password
        self.password_digest = BCrypt::Password.create(unencrypted_password)
      end
    end



end

