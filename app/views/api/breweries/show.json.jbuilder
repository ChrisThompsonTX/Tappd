json.partial! "api/breweries/brewery", brewery: @brewery

# json.reviews do
#     @brewery.reviews.each do |review|
#         json.set! review.id do
#             json.partial! "api/reviews/review", review: review
#         end
#     end
# end

json.beers do
    @brewery.beers.each do |beer|
        json.set! beer.id do
            json.partial! "api/beers/beer", beer: beer
        end
    end
end

json.breweries do
    @breweries.each do |brewery|
        json.set! brewery.id do
            json.extract! brewery,
                :name,
                :id
        end
    end
end