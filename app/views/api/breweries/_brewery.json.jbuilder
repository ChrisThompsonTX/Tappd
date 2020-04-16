json.extract! brewery,
    :id,
    :name,
    :address,
    :city,
    :state,
    :country,
    :description,
    :rating,
    :lat,
    :lng,
    :beer_ids, 
    :review_ids

json.logo url_for(brewery.logo)

