class User < ActiveRecord::Base
  attr_accessor :password
  before_validation :encrypt_password
  has_many :uploads
  has_many :rates
  has_many :comments
  
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  
  validates_presence_of :email
  validates_uniqueness_of :email
  
  validates :username, :presence => true, :uniqueness => true
  validates :password_hash, :presence => true
  validates :password_salt, :presence => true
  validates :email, :format => {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
  
  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
    
  def encrypt_password
    if self.password.present?
      self.password_salt = BCrypt::Engine.generate_salt 
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
