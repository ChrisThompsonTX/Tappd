class Beer < ApplicationRecord
  
  validates :name, 
    :brewery_id, 
    :style, 
    :rating, 
    :description, 
    :abv, 
    :ibu, 
    presence: true

  belongs_to :brewery,
    foreign_key: :brewery_id,
    class_name: :Brewery

  has_many :reviews,
    foreign_key: :beer_id,
    class_name: :Review

  has_many :reviewers,
    through: :reviews,
    source: :user

  has_one_attached :label

end
