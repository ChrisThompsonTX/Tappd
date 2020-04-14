json.partial! "api/beers/beer", beer: @beer

json.users do 
    @beer.reviewers.each do |reviewer|
        # debugger
        json.set! reviewer.id do
            json.extract! reviewer, :username, :profile_photo
        end
    end
end
