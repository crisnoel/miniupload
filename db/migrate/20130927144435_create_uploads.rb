class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|

      t.timestamps
      t.string :fileName
      #t.file :file
      t.text :description
      t.string :tags
      t.references :user
      
    end
    add_attachment :upload, :file
  end
end
