json.extract! beer, 
    :id, 
    :name, 
    :brewery_id, 
    :style, 
    :rating,
    :description,
    :abv,
    :ibu,
    :brewery
json.label url_for(beer.label)


json.reviews(beer.reviews) do |review|
    json.extract! review, :rating, :body, :user_id, :created_at
    json.user do
        # json.extract! review.user, :id, :username
        json.partial! "api/users/user", user: review.user
    end
end