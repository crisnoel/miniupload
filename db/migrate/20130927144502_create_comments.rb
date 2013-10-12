class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.text :body
      t.references :user
      t.references :upload
      t.timestamps
      
    end
  end
end
