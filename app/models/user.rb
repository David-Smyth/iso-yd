class User < ActiveRecord::Base
  
  validates :name, presence: true, length: { maximum: 50 }
  
  validates :email, presence: true, format: { with: /@/ },
    uniqueness: { case_sensitive: false }

  before_save { email.downcase! }

  has_secure_password

  validates :password, length: { minimum: 6 }

end
