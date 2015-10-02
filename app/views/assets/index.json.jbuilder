json.array!(@assets) do |asset|
  json.extract! asset, :id, :name, :description, :highlights, :size, :size_type, :price, :price_psf, :dnd_price, :cap_rate, :occupancy, :year_built, :offer_date, :title, :visibility, :ended, :address, :address_2, :state, :city, :zip, :website, :country, :user_id
  json.url asset_url(asset, format: :json)
end
