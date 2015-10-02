class AddAddress2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address_2, :string
  end
end
