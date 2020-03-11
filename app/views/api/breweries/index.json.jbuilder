@breweries.each do |brewery|
    json.set! brewery.id do
        json.partial! "api/breweries/brewery", brewery: brewery    
    end
end

# json.beers do 
#     @breweries.each do |brewery|
#         json.set! brewery.id do
#             json.extract! brewery, :beers
#         end
#     end
# end

# json.reviews do 
#     @breweries.each do |brewery|
#         json.set! brewery.id do
#             json.extract! brewery, :reviews
#         end
#     end
# end


