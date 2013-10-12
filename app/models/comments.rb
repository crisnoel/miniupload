class Comments < ActiveRecord::Base
  has_many :users
  has_many :upload
  validates :body, :presence=>true
end
