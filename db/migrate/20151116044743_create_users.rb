class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :state
      t.string :city

      t.timestamps null: false
    end
  end
end
