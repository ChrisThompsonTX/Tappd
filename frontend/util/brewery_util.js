export const fetchBrewery = breweryId => (
    $.ajax({
        method: 'GET',
        url: `/api/breweries/${breweryId}`
    })
);

export const fetchBreweries = () => (
    $.ajax({
        method: 'GET',
        url: '/api/breweries'
    })
);

export const createBrewery = brewery => {
    // debugger
    brewery = JSON.parse(JSON.stringify(brewery))
    return $.ajax({
        method: 'POST',
        url: '/api/breweries',
        data: {foo: "bar"},
        processData: false,
        contentType: false
    })
};

export const updateBrewery = brewery => (
    $.ajax({
        method: 'PATCH',
        url: `/api/breweries/${brewery.id}`,
        data: { brewery }
    })
);

export const deleteBrewery = breweryId => (
    $.ajax({
        method: 'DELETE',
        url: `/api/breweries/${breweryId}`
    })
);
