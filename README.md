# TAPPD
TAPPD is a social media app focused on logging, rating, and sharing reviews of beers and breweries inspired by [Untappd](https://untappd.com/). Tappd can also be used to research new beers and breweries.

### Checkout [Tappd Live](https://tappd-ct.herokuapp.com/#/)!

### Backend
- Ruby 2.5.1
- Rails 5.2.4.1
- PostgreSQL
### Frontend
- React
- Redux
- JavaScript ES6

## Features
- Secure User Authorization using BCrypt hashing
- User auth errors are separated and displayed over the proper field
- Breweries are displayed in a list as links to a page displaying all their beers

![alt text](https://tappd-seeds.s3-us-west-1.amazonaws.com/UserAuthErrors.png "User Auth Errors")
### User Auth Errors
- In order to pass errors to correct field, I parsed each error individually from the controller to be separated later into individual stylized errors.


### Future Features
In the future I would like to add:
- A from to create a new brewery, beer, and review
- A feed of the newest reviews and comments
- A like system so that you can like other users reviews
- The ability to search through breweries, beers, and users