class ChangeUserRatingToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :breweries, :rating, :float
    change_column :beers, :rating, :float
    change_column :reviews, :rating, :float
  end
end
