class AddResponsibilitiesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :responsibilities, :string
  end
end
