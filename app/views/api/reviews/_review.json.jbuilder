json.extract! review,
    :rating,
    :body,
    :beer_id,
    :user_id,
    :created_at
if review.photo.attached?
    json.photo url_for(review.photo)
end
# json.beer do
#     json.extract! review.beer,
#     :id, 
#     :name, 
#     :brewery_id, 
#     :style, 
#     :rating,
#     :description,
#     :abv,
#     :ibu,
#     :brewery,
#     json.label url_for(beer.label)
# end
json.user do
    json.partial! "api/users/user", user: review.user
end
json.beer do
    json.partial! "api/reviews/review_beer", beer: review.beer
end
# json.beer(review.beer) do |beer|
#     json.partial! "api/beers/beer", beer: review.beer
# end

# json.beer do 
#     json.extract! "api/beers/beer", review.beer, :body, :rating, :userId, :createdAt, :
# end

# json.reviews(beer.reviews) do |review|
#     json.extract! review, :rating, :body, :user_id, :created_at
#     json.user do
#         # json.extract! review.user, :id, :username
#         json.partial! "api/users/user", user: review.user
#     end
# end