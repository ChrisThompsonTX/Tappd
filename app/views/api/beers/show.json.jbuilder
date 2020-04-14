json.partial! "api/beers/beer", beer: @beer

# json.users do 
#     @beer.reviewers.each do |reviewer|
#         # debugger
#         json.set! reviewer.id do
#             json.partial! "api/users/user", user: reviewer
#         end
#     end
# end
