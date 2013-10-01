class User < ActiveRecord::Base
  has_many :short_urls
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

end