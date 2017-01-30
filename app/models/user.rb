class User < ActiveRecord::Base

  has_many :ichiposts
  has_secure_password



end
