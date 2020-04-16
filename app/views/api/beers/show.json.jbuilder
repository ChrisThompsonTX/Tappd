json.partial! "api/beers/beer", beer: @beer

json.reviews(@beer.reviews) do |review|
    json.extract! review, :rating, :body, :user_id, :created_at
    json.user do
        json.partial! "api/users/user", user: review.user
    end
end

# json.users do 
#     @beer.reviewers.each do |reviewer|
#         # debugger
#         json.set! reviewer.id do
#             json.partial! "api/users/user", user: reviewer
#         end
#     end
# end
