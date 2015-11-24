class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :country_code
      t.string :state_code

      t.timestamps null: false
    end
  end
end
