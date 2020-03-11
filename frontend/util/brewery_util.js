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

export const createBrewery = brewery => (
    $.ajax({
        method: 'POST',
        url: '/api/breweries',
        data: { brewery }
    })
);

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
