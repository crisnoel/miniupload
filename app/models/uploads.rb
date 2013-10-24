class Uploads < ActiveRecord::Base
  has_attached_file :file, :styles => {:mini => "128x128"}
end
