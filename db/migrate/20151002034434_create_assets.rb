class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.text :description
      t.text :highlights
      t.string :size
      t.string :size_type
      t.integer :price
      t.float :price_psf
      t.boolean :dnd_price
      t.float :cap_rate
      t.integer :occupancy
      t.string :year_built
      t.date :offer_date
      t.string :title
      t.string :visibility
      t.boolean :ended
      t.string :address
      t.string :address_2
      t.string :state
      t.string :city
      t.string :zip
      t.string :website
      t.string :country
      t.references :user, index: true

      t.timestamps
    end
  end
end
