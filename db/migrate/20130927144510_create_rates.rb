class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      
      t.timestamps
      t.integer :value
      t.references :user
      t.references :upload
      
    end
  end
end
