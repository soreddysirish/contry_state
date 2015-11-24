class AddMobileToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :mobile, :string
  end
end
