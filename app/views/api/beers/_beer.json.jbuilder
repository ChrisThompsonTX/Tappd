json.extract! beer, 
    :id, 
    :name, 
    :brewery_id, 
    :style, 
    :rating,
    :description,
    :abv,
    :ibu,
    :review_ids
json.label url_for(beer.label)