json.extract! beer, 
    :id, 
    :name, 
    :brewery_id, 
    :style, 
    :rating,
    :description,
    :abv,
    :ibu,
    :reviews
json.label url_for(beer.label)