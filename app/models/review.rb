class Review < ApplicationRecord
    validates :rating, 
    :body, 
    :beer_id, 
    :user_id,
    presence: true

    belongs_to :beer,
        foreign_key: :beer_id,
        class_name: :Beer

    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User

    has_one_attached :photo
    
end
