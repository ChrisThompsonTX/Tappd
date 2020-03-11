json.partial! "api/beers/beer", beer: @beer

json.reviews do 
    @beer.reviews.each do |review|
        json.set! review.id do
            json.extract! review, :raing, :body, :user_id, :created_at
        end
    end
end

# json.users do 
#     @beer.reviewers.each do |reviewer|
#         json.set! reviewer.id do
#             json.extract! reviewer, :username, :profile_photo
#         end
#     end
# end
