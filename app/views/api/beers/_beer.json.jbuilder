json.extract! beer, 
    :id, 
    :name, 
    :brewery_id, 
    :style, 
    :rating,
    :description,
    :abv,
    :ibu
    # :reviews
json.label url_for(beer.label)

json.reviews(beer.reviews) do |review|
    json.extract! review, :rating, :body, :user_id, :created_at
    json.user do
        json.extract! review.user, :id, :username, :profile_photo
    end
end