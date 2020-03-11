class Brewery < ApplicationRecord
    validates :name, 
    :address, 
    :city, 
    :country, 
    :description,
    :rating,
    presence: true

    has_many :beers,
        foreign_key: :brewery_id,
        class_name: :Beer

    has_many :reviews,
        through: :beers,
        source: :reviews
        
end
