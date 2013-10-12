class Users < ActiveRecord::Base
  has_many :uploads
  has_many :rates
  has_many :comments
  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :email, :presence => true, :format => {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
end
