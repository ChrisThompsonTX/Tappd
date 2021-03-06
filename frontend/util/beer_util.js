export const fetchBeer = beerId => (
    $.ajax({
        method: 'GET',
        url: `/api/beers/${beerId}`
    })
);

export const fetchBeers = () => (
    $.ajax({
        method: 'GET',
        url: '/api/beers'
    })
);

export const createBeer = beer => (
    $.ajax({
        method: 'POST',
        url: '/api/beers',
        data: beer,
        processData: false,
        contentType: false
    })
);

export const updateBeer = beer => (
    $.ajax({
        method: 'PATCH',
        url: `/api/beers/${beer.id}`,
        data: { beer }
    })
);

export const deleteBeer = beerId => (
    $.ajax({
        method: 'DELETE',
        url: `/api/beers/${beerId}`
    })
);
