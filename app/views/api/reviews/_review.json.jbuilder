json.extract! review,
    :rating,
    :body,
    :beer_id,
    :user_id
    :beer
# json.partial! "api/beers/beer", beer: review.beer

json.beer(review.beer) do |beer|
    json.partial! "api/beers/beer", beer: review.beer
end

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