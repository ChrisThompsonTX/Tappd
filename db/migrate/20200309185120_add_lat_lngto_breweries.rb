class AddLatLngtoBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :lat, :integer
    add_column :breweries, :lng, :integer
  end
end
