class Upload < ActiveRecord::Base
  belongs_to :user    
  has_attached_file :file, :styles => {:medium => "640x480"}
  # has_attached_file :file, styles: { medium: '200x200>'}*/
 # has_attached_file :image, styles: { medium: '200x200>', thumb: '48x48>' }*/
end
