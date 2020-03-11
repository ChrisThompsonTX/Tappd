class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name, null: false, unique:true
      t.integer :brewery_id, null: false
      t.string :style, null: false
      t.integer :rating, null: false
      t.string :description, null: false
      t.integer :abv, null: false
      t.integer :ibu, null: false
    end
    add_index :beers, :name
  end
end
