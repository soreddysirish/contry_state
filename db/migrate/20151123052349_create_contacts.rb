class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :full_name

      t.timestamps null: false
    end
  end
end
