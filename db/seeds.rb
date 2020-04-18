require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Beer.destroy_all
Brewery.destroy_all
User.destroy_all

#########
# Users #
#########

demo_user = User.create!({
    username: "DemoUser",
    password: "password",
    email: "demo@demo.demo"
    })

photo0 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ProfilePictures/Demo.jpeg')
demo_user.profile_photo.attach(io: photo0, filename: 'Demo.jpeg')

user1 = User.create!({
    username: "BeerHunter",
    password: "password",
    email: "MJ@beer.hunter"
    })

photo1 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ProfilePictures/Michael.jpg')
user1.profile_photo.attach(io: photo1, filename: 'Michael.jpg')

user2 = User.create!({
    username: "Nick C.",
    password: "password",
    email: "not@the.bees"
    })

photo2 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ProfilePictures/Nick.jpg')
user2.profile_photo.attach(io: photo2, filename: 'Nick.jpg')

user3 = User.create!({
    username: "Randy S.",
    password: "password",
    email: "macho@man.randy"
    })

photo3 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ProfilePictures/Randy.jpg')
user3.profile_photo.attach(io: photo3, filename: 'Randy.jpg')

user4 = User.create!({
    username: "Steve A.",
    password: "password",
    email: "stonecold@said.so"
    })

photo4 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ProfilePictures/SteveA.jpg')
user4.profile_photo.attach(io: photo4, filename: 'SteveA.jpg')

user5 = User.create!({
    username: "Steve B.",
    password: "password",
    email: "hello@fellow.kids"
    })

photo5 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ProfilePictures/SteveB.jpg')
user5.profile_photo.attach(io: photo5, filename: 'SteveB.jpg')


#############   
# Breweries #
#############

brewery1 = Brewery.create!({
    name: "Moonlight Brewing Company",
    address: "3350 Coffey Ln suite a & d 95403",
    city: "Santa Rosa",
    state: "CA",
    country: "United States",
    description: "Moonlight Brewery was started in rural Santa Rosa in 1992 by Brian Hunt. Small by most all comparisons, the brewery has capacity for about 2500 barrels per year. Whereas the original brewery was in a converted tractor barn, today it is more commercial location. Currently all the beers are only sold in kegs and can be found in San Francisco, the East Bay and North Bay counties. Mendocino and Lake Counties have a few spots, and there are rare sightings in Santa Cruz, Seal Beach, and San Diego.",
    rating: 3.7
    })

logo1 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/moonlightbrewing.jpg')
brewery1.logo.attach(io: logo1, filename: 'moonlightbrewing.jpg')

brewery2 = Brewery.create!({
    name: "Logsdon Farmhouse Ales",
    address: "1834 Main St 98671",
    city: "Washougal",
    state: "WA",
    country: "United States",
    description: "A Belgian-inspired brewery, founded in 2009 by David Logsdon on his family farm in Hood River County. David started as a founding member and brewer at Full Sail Brewing and founded Wyeast Laboratories. His passion for unique and experimental yeast helped to foster his dream of opening a traditional farmhouse brewery. We brew in the true Belgian farmhouse tradition using all organic and locally sourced ingredients. The fruity and well rounded flavor profiles of our beer can be attributed to our use of singular specialty yeast strains and many of our offerings spend time in oak barrels to impart more complex characteristics similar to that of a fine wine.",
    rating: 4
    })

logo2 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/logsdonbrewing.jpg')
brewery2.logo.attach(io: logo2, filename: 'logsdonbrewing.jpg')

brewery3 = Brewery.create!({
    name: "Russian River Brewing Company",
    address: "725 4th St 95404",
    city: "Santa Rosa",
    state: "CA",
    country: "United States",
    description: "Russian River Brewing Company (RRBC) was originally owned by Korbel Champagne Cellars in Guerneville, California and was founded on their historic and beautiful property amidst vineyards and redwoods near the Russian River. When Korbel decided to get out of the beer business in 2003, they generously offered the brewmaster, Vinnie Cilurzo and his wife Natalie the rights to the brand. Russian River Brewing might be something completely different now if it weren't for this incredible opportunity. In the early days on the Korbel property, Vinnie not only brewed the beer, but made the sales calls and deliveries as well. Eventually they hired a sales/delivery guy to help with all of that so he could focus on brewing! Korbel planted a small hop field where Vinnie received a 'field' education on growing and brewing with 'wet' hops. It was from those amazingly fresh hops, grown just a few yards away, that he made his first wet hops brew, 'Hop-Time Harvest Ale'. As it turns out, demand is still greater than the supply, but they prefer to grow their business organically while focusing on efficiencies and quality. For now, it is easier to make better beer than it is to make more beer! The history of Russian River Brewing Company would be incomplete without a little background on the people who own it, operate it, and are passionate about their brewery and craft beer in general!",
    rating: 4.2
    })

logo3 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/russianriverbrewing.png')
brewery3.logo.attach(io: logo3, filename: 'russianriverbrewing.png')

brewery4 = Brewery.create!({
    name: "Suarez Family Brewery",
    address: "2278 U.S. 9 12534",
    city: "Hudson",
    state: "NY",
    country: "United States",
    description: "We're a mom and pop production brewery specializing in ales of mixed fermentation, unfiltered lagers, and other crispy little beers. Brewer owned and operated.",
    rating: 4.2
    })

logo4 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/suarezbrewing.jpg')
brewery4.logo.attach(io: logo4, filename: 'suarezbrewing.jpg')

brewery5 = Brewery.create!({
    name: "Jester King Brewery",
    address: "13187 Fitzhugh Rd 78736",
    city: "Austin",
    state: "TX",
    country: "United States",
    description: "Located in the beautiful Texas Hill Country, Jester King Craft Brewery is an authentic farmhouse brewery committed to brewing artisan ales of great depth and character. At times drawing influences from the world beyond traditional brewers’ yeast, Jester King’s beer is not rushed to market but allowed to mature – often in oak barrels – to create the most enjoyable, interesting and exciting beer we can make. An additional layer of complexity is added to Jester King’s bottled beers by allowing a second fermentation to take place in the bottle. As part of its commitment to sustainability, the slow food movement and Texas, Jester King beer uses as many organic and local ingredients as possible and will soon be brewed with harvested rainwater.",
    rating: 4.0
    })

logo5 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/jesterkingbrewing.png')
brewery5.logo.attach(io: logo5, filename: 'jesterkingbrewing.png')

brewery6 = Brewery.create!({
    name: "Allagash Brewing Company",
    address: "50 Industrial Way 04103",
    city: "Portland",
    state: "ME",
    country: "United States",
    description: "Founded in Portland, Maine, by Rob Tod, Allagash Brewing Company is dedicated to crafting the best Belgian-inspired beers in the world. Since 1995, Allagash has been a proud resident of Portland, and loves giving back to the community—and state—that has supported it along the way. Allagash currently stands as one of the Top 50 Craft Breweries in the U.S. (by sales volume) and loves to experiment in barrel-aged and spontaneously fermented beers. A portion of the proceeds from all Allagash beers goes back to organizations that help make our great state of Maine even better.",
    rating: 3.9
    })

logo6 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/allagashbrewing.jpg')
brewery6.logo.attach(io: logo6, filename: 'allagashbrewing.jpg')

brewery7 = Brewery.create!({
    name: "Sierra Nevada Brewing Co.",
    address: "1075 E 20th St 95928",
    city: "Chico",
    state: "CA",
    country: "United States",
    description: "In 1980, Ken Grossman built a small brewery in the city of Chico, California. To this day, premium ingredients and time-honored brewing techniques make Sierra Nevada ales and lagers truly exceptional beers.",
    rating: 3.7
    })

logo7 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/sierranevadabrewing.png')
brewery7.logo.attach(io: logo7, filename: 'sierranevadabrewing.png')

brewery8 = Brewery.create!({
    name: "Sante Adairius Rustic Ales",
    address: "103 Kennedy Dr 95010",
    city: "Capitola",
    state: "CA",
    country: "United States",
    description: "Sante Adairius Rustic Ales is a small, but daring, brewery located in the coastal city of Capitola, CA, just south of Santa Cruz. Sante Adairius is a brewery founded on respect for quality and authenticity. We focus our attention on producing well-constructed beers with an eye towards simplicity and character. SARA takes liberty in emulating those memorable beers, their brewers, and the experiences they foster, never forgetting those giants on whose shoulders we stand. Our approach to beer making is one of whimsy, highly inspired by the Belgian tradition, but also in harmony with brewers all over the world who push against boundaries of style with a nudge, not a shove. Often our beers are barrel-aged, usually in wine barrels, with various yeast and bacteria. As often as not though, Sante Adairius brews beers more approachable and traditional in nature, yet no less flavorful or distinctive. Owned and operated by us, Adair Paterno and Tim Clifford, Sante Adairius Rustic Ales is our attempt to bring people together over great beer. SARA is an expression of our many years of beer geekery, the rabbit hole of tasting every beer we could get our hands on, and trusting we could contribute to the canon of those beers of the highest esteem. We believe great beer comes first. We stay true to our brewing roots. We take seriously the fact that we are brewing for you, and for ourselves. We appreciate your interest in our efforts. Sante!",
    rating: 4.3
    })

logo8 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/santeadairiusbrewing.png')
brewery8.logo.attach(io: logo8, filename: 'santeadairiusbrewing.png')

brewery9 = Brewery.create!({
    name: "Trumer Brewery",
    address: "1404 Fourth St 94710",
    city: "Berkeley",
    state: "CA",
    country: "United States",
    description: "Over 400 years ago, a small, family-owned craft brewery in Austria began a mission to brew one beer, perfectly. With the soft water of the Alpine streams and one-of-a-kind Saaz noble hops nearby, the pilsner style was a natural choice. The brewery worked for hundreds of years perfecting its craft, and eventually, Trumer Pils was born. With its perfect head of foam, enticing aroma, vigorous carbonation and crisp finish, Trumer Pils is the definition of a great pilsner. When a group of American craft brewers discovered this exquisite pilsner and wanted to bring it to the United States, they took the shipping process as seriously as the Austrians took their brewing. So in 2003, they didn't just ship a bottle to America, they shipped a brewery. Trumer become the first craft brewery to build a replica of a brewery in another country. Trumer Pils Berkeley now gives American craft beer lovers the chance to enjoy an authentic German-style pilsner the way it was meant to be: fresh! Tours are offered at Trumer Brewery in Berkeley, CA Monday through Friday at 3:15pm by reservation. Please email Tours@TrumerUSA.com or call 510.526.1160 for more information and to make a reservation. Prost!",
    rating: 3.5
    })

logo9 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/trumerbrewing.png')
brewery9.logo.attach(io: logo9, filename: 'trumerbrewing.png')

brewery10 = Brewery.create!({
    name: "Brouwerij Bosteels",
    address: "Hanenstraat 9255",
    city: "Buggenhout",
    state: "",
    country: "Belgium",
    description: "In the hands of the Bosteels family for over 200 years, the brewery relies today on the craftmanship of seven generations. In 1791, Jean-Baptist Bosteels established the brewery, and has been followed by generations who took over the brewery and never stop brewing, even during the world wars. At that time, the brewery played such an important role in the town, the family Bosteels were such influential people that we are not surprised that 3 of the 7 generations have been Town Mayors. In the year 1930’s Antoine Bosteels, 5th generation, carried on the brewing dynasty and played an important role expanding the sales of the Bosteels Pils into other regions such as Ghent, Antwerp and Brussels. His son Ivo Bosteels honored the iconic beer of Pauwel Kwak by bringing it back to the market in 1980; this is the beginning of the strong beers for Brewery Bosteels. In the year 1990, Ivo’s son, Antoine Bosteels, the 7th generation, understood the potential of strong speciality beers and especially the trend for blond ones. Driven by passion of the art of brewing and guided by his creativity, Antoine is at the roots of the succes of Tripel Karmeliet and DeuS Brut des Flandres.",
    rating: 3.9
    })

logo10 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BreweryLogos/bosteelsbrewing.jpg')
brewery10.logo.attach(io: logo10, filename: 'bosteelbrewing.jpg')


#########
# Beers #
#########


beer1 = Beer.create!({
    name: "Reality Czech",
    brewery_id: brewery1.id,
    style: "Pilsner - Czech",
    rating: 3.7,
    description: "A delicate soft Lager, authentic to the west coast of the Czeck Republic.",
    abv: 4.8,
    ibu: 0
    })

label1 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Moonlight-RealityCzech.jpg')
beer1.label.attach(io: label1, filename: 'Moonlight-RealityCzech.jpg')

beer2 = Beer.create!({
    name: "Death & Taxes",
    brewery_id: brewery1.id,
    style: "Lager - Dark",
    rating: 3.8,
    description: "A very dark yet surprisingly light-bodied Lager beer, crisp and refreshing with no heaviness.",
    abv: 5,
    ibu: 0
    })

label2 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Moonlight-DeathAndTaxes.png')
beer2.label.attach(io: label2, filename: 'Moonlight-DeathAndTaxes.jpg')


beer3 = Beer.create!({
    name: "Seizon Bretta",
    brewery_id: brewery2.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.0,
    description: "A not so traditional Farmhouse saison or ‘seasonal’ style beer brewed to develop complex fruitiness and acidity. Brettanomyces yeast is added, which over time diminishes the malt and hop character and accentuates the dry, fruity & spicy characteristics.",
    abv: 8,
    ibu: 35
    })

label3 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Logsdon-SeizonBretta.jpeg')
beer3.label.attach(io: label3, filename: 'Logsdon-SeizonBretta.jpeg')

beer4 = Beer.create!({
    name: "Peche 'n Brett",
    brewery_id: brewery2.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.4,
    description: "Our seasonal oak aged organic peach beer is brewed with local Oregon fruit. Peche 'n Brett is brewed and refermented with the peaches in our Seizoen Bretta. One and a half pound of peaches are added to each gallon of Bretta to produce a secondary fermentation resulting in complex peach aroma and flavor, hop balance and subtle malt character, followed up with brettanomyces and oak derived fruity dryness. Final refermentation with pear juice provides natural carbonation with added aromas and flavors in the bottle.",
    abv: 10,
    ibu: 0
    })

label4 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Logsdon-PecheNBrett.jpeg')
beer4.label.attach(io: label4, filename: 'Logsdon-PecheNBrett')

beer5 = Beer.create!({
    name: "STS Pils",
    brewery_id: brewery3.id,
    style: "Kellerbier / Zwickelbier",
    rating: 3.6,
    description: "STS Pils is a classic European style Pilsner. It is straw in color and often times will have a slight haze due to the fact that it is unfiltered. STS Pils is a hop forward pilsner with a mild malt foundation, strong lager yeast characteristic, and a dry, bitter finish.",
    abv: 5.3,
    ibu: 33
    })

label5 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/RussianRiver-STSPils.jpeg')    
beer5.label.attach(io: label5, filename: 'RussianRiver-STSPils.jpeg')

beer6 = Beer.create!({
    name: "Blind Pig IPA",
    brewery_id: brewery3.id,
    style: "IPA - American",
    rating: 4.2,
    description: "Blind Pig IPA was originally brewed by Vinnie at Blind Pig Brewing Co. in Temecula CA. Inspired by the original Blind Pig IPA, this beer is loaded with hop character but only has 6.0% ABV.",
    abv: 6.1,
    ibu: 70
    })

label6 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/RussianRiver-BlindPig.jpg')    
beer6.label.attach(io: label6, filename: 'RussianRiver-BlindPig.jpg')

beer7 = Beer.create!({
    name: "Supplication",
    brewery_id: brewery3.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Brown ale aged in Pinot Noir wine barrels for one year with sour cherries, Brettanomyces yeast, and Lactobacillus & Pedicoccus bacteria.",
    abv: 7.75,
    ibu: 10
    })

label7 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/RussianRiver-Supplication.png')
beer7.label.attach(io: label7, filename: 'RussianRiver-Supplication.png')

beer8 = Beer.create!({
    name: "Temptation",
    brewery_id: brewery3.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Blonde Ale aged in used Chardonnay barrels from local Sonoma County wineries. It is aged for about 9 to 15 months (depending on the age of the barrel) with lots of brettanomyces, lactobacillus, and pediococcus added to each barrel. Medium bodied with hints of oak and Chardonnay, funky brett characteristics, with a nice, long sour finish.",
    abv: 7.5,
    ibu: 0
    })

label8 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/RussianRiver-Temptation.jpg')
beer8.label.attach(io: label8, filename: 'RussianRiver-Temptation.jpg')

beer9 = Beer.create!({
    name: "Pliny the Elder",
    brewery_id: brewery3.id,
    style: "IPA - Imperial / Double",
    rating: 4.5,
    description: "A true leader in the hop-wars of the west coast, Pliny the Elder hits you over the head with hoppy bitterness and manages to smooth the rough edges out enough to become an enjoyable brew.",
    abv: 8,
    ibu: 100
    })

label9 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/RussianRiver-PlinyTheElder.jpg')
beer9.label.attach(io: label9, filename: 'RussianRiver-PlinyTheElder.jpg')

beer10 = Beer.create!({
    name: "Beatification",
    brewery_id: brewery3.id,
    style: "American Wild Ale",
    rating: 4.4,
    description: "This beer is very unique and inspired by breweries in the Lambic region of Belgium and, especially, our friends at Cantillon. It is 100% spontaneously fermented, meaning yeast is not added. Once the beer is brewed, it is transferred to a cool-ship or “horny” tank located in our barrel room at the pub. There it sits overnight and collects whatever funky wild yeast and bacteria may be living in the room. The next day it is transferred to oak wine barrels where it ferments wildly and ages for a few months. The end result is a wild, spontaneously fermented, sour, and tasty hand-crafted beer!",
    abv: 6,
    ibu: 0
    })

label10 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/RussianRiver-Beatification.png')
beer10.label.attach(io: label10, filename: 'RussianRiver-Beatification.png')

beer11 = Beer.create!({
    name: "Consecration",
    brewery_id: brewery3.id,
    style: "Sour - Other",
    rating: 4.4,
    description: "Ale aged in Cabernet Sauvignon barrels with currants added",
    abv: 10,
    ibu: 0
    })

label11 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/RussianRiver-Consecration.jpg')
beer11.label.attach(io: label11, filename: 'RussianRiver-Consecration.jpg')

beer12 = Beer.create!({
    name: "Bony Fingers",
    brewery_id: brewery1.id,
    style: "Lager - Dark",
    rating: 3.9,
    description: "Roastier, bolder version of our iconic Death & Taxes. Higher ABV, fuller body and exactly what you want when the weather goes autumn.",
    abv: 6.2,
    ibu: 0
    })

label12 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Moonlight-BonyFingers.jpg')
beer12.label.attach(io: label12, filename: 'Moonlight-BonyFingers.jpg')

beer13 = Beer.create!({
    name: "Leifer: 2017 Harvest",
    brewery_id: brewery4.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.5,
    description: "(Batch Date: 7/17) Leifer is an oak ripened country beer of mixed fermentation, rested upon over a hundred pounds of rhubarb grown by our neighbors, the Leifer family.",
    abv: 5.2,
    ibu: 0
    })

label13 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SuarezFamily-Leifer.png')
beer13.label.attach(io: label13, filename: 'SuarerzFamily-Leifer.png')

beer14 = Beer.create!({
    name: "Call To Mind",
    brewery_id: brewery4.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.4,
    description: "Call To Mind is a country beer brewed with subtle additions of chamomile, lemon thyme, and lemon balm - all sourced from our neighbors. Fermented with a mixed culture and briefly ripened in oak casks to yield a distinct and lively offering.",
    abv: 5.4,
    ibu: 0
    })

label14 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SuarezFamily-CallToMind.png')
beer14.label.attach(io: label14, filename: 'SuarezFamily-CallToMind.png')

beer15 = Beer.create!({
    name: "Whistlin'",
    brewery_id: brewery4.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.3,
    description: "Whistlin' is a country beer brewed with fresh lemongrass grown by our neighbors. We ferment with a mixed culture and ripen it in oak casks, yielding a citrusy ale with a zesty and slightly spicy vibe.",
    abv: 5.6,
    ibu: 0
    })

label15 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SuarezFamily-Whistlin.png')
beer15.label.attach(io: label15, filename: 'SuarezFamily-Whistlin')

beer16 = Beer.create!({
    name: "Palatine Pils",
    brewery_id: brewery4.id,
    style: "Pilsner - German",
    rating: 4.1,
    description: "Our cherished house pilsner",
    abv: 4.8,
    ibu: 0
    })

label16 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SuarezFamily-PalatinePils.jpeg')
beer16.label.attach(io: label16, filename: 'SuarezFamily-PalatinePils.jpeg')

beer17 = Beer.create!({
    name: "Qualify Pils",
    brewery_id: brewery4.id,
    style: "Pilsner - German",
    rating: 4.1,
    description: "Hop accented German Pilsner",
    abv: 5.0,
    ibu: 0
    })

label17 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SuarezFamily-QualifyPils.jpeg')
beer17.label.attach(io: label17, filename: 'SuarezFamily-QualifyPils.jpeg')

beer18 = Beer.create!({
    name: "Crispy Little",
    brewery_id: brewery4.id,
    style: "Wheat Beer - American Pale Wheat",
    rating: 4.0,
    description: "Pale ale brewed with wheat",
    abv: 4.6,
    ibu: 0
    })

label18 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SuarezFamily-CrispyLittle.jpg')
beer18.label.attach(io: label18, filename: 'SuarezFamily-CrispyLittle.jpg')

beer19 = Beer.create!({
    name: "Homespun",
    brewery_id: brewery4.id,
    style: "Pale Ale - American",
    rating: 4.1,
    description: "Hoppy spelt ale. Brewed with a unique blend of modern/fruity Pacific Northwest hops, in conjunction with old-school German hops.",
    abv: 4.5,
    ibu: 0
    })

label19 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SuarezFamily-Homespun.png')
beer19.label.attach(io: label19, filename: 'SuarezFamily-Homespun.png')

beer20 = Beer.create!({
    name: "Le Petit Prince",
    brewery_id: brewery5.id,
    style: "Table Beer",
    rating: 3.5,
    description: "Throughout Northern Europe, light-bodied, well-hopped, low alcohol table beers were often the beverage of choice with all meals at times and in places where the water wasn’t always safe to drink. Le Petit Prince is a dry, unspiced, highly attenuated Farmhouse Table Beer unique to our land in the Texas Hill Country. Naturally occurring wild yeasts impart a sense of place to this unfiltered, unpasteurized, 100% naturally conditioned ale.",
    abv: 2.9,
    ibu: 30
    })

label20 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKing-LePetitPrince.png')
beer20.label.attach(io: label20, filename: 'JesterKing-LePetitPrince.png')

beer21 = Beer.create!({
    name: "Das Wunderkind!",
    brewery_id: brewery5.id,
    style: "Farmhouse Ale - Saison",
    rating: 3.9,
    description: "Made using the once commonplace, Old World technique of bière de coupage, freshly hopped, young beer is blended with old, sour beer aged in oak barrels. Das Wunderkind! is dry, highly attenuated, unspiced, tart, floral, and funky. Unfiltered, unpasteurized, and 100% naturally conditioned.",
    abv: 4.5,
    ibu: 0
    })

label21 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKing-DasWunderkind.png')
beer21.label.attach(io: label21, filename: 'JesterKing-DasWunderkind.png')

beer22 = Beer.create!({
    name: "Funk Metal",
    brewery_id: brewery5.id,
    style: "Sour - Other",
    rating: 4.0,
    description: "Funk Metal is an 8.2% alcohol, unfiltered, unpasteurized, naturally conditioned imperial stout fermented with farmhouse yeast, aged for months in oak barrels with wild yeast and souring bacteria, and then hand-blended with other barrel-aged beer to round out the palate. The finished beer retains aromas of chocolate and roast but takes on a distinct vinous character and sour complexity from extended aging and fermentation in oak barrels.",
    abv: 8.2,
    ibu: 60
    })

label22 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKing-FunkMetal.png')
beer22.label.attach(io: label22, filename: 'JesterKing-FunkMetal.png')

beer23 = Beer.create!({
    name: "Atrial Rubicite",
    brewery_id: brewery5.id,
    style: "American Wild Ale",
    rating: 4.5,
    description: "Atrial Rubicite is made from well water, barley, wheat, hops, farmhouse, native yeast from the Texas Hill Country, souring bacteria and raspberries. It’s 5.8% alcohol by volume, has a finishing gravity of 1.005 and is 3.36 pH. It is unfiltered, unpasteurized and 100% bottle conditioned.",
    abv: 5.8,
    ibu: 0
    })

label23 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKing-AtrialRubicite.png')
beer23.label.attach(io: label23, filename: 'JesterKing-AtrialRubicite.png')

beer24 = Beer.create!({
    name: "Commercial Suicide",
    brewery_id: brewery5.id,
    style: "English Mild Ale",
    rating: 3.5,
    description: "English pub ale meets the French farmhouse tradition and American oak aging in this dry, drinkable farmhouse mild ale. Full-flavored, but brewed with enough restraint to be highly sessionable. Unfiltered, unpasteurized, and naturally conditioned.",
    abv: 3.5,
    ibu: 0
    })

label24 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKing-CommercialSuicide.png')
beer24.label.attach(io: label24, filename: 'JesterKing-CommercialSuicide.png')

beer25 = Beer.create!({
    name: "Moderne Dansk",
    brewery_id: brewery5.id,
    style: "American Wild Ale",
    rating: 4.4,
    description: "Wild ale aged in Danish cherry wine barrels refermented with Danish Stevnsbær cherry juice! Moderne Dansk was inspired by one of our favorite wineries in the world -- Frederiksdal Kirsebærvin in Harpelunde, Denmark. Frederiksdal specializes in making beautiful wines from Danish Stevnsbær cherries. We've been lucky to carry their wines in our tasting room and call them friends for several years. Their wines are a house-favorite here at Jester King. We are grateful to have procured oak barrels previously containing their wine, as well as juice from Stevnsbær cherries. We brewed beer with well water, local grain, and a blend of fresh and aged hops, and fermented it with our mixed culture of brewers yeast and native yeast and bacteria. We then aged the beer in cherry wine barrels for about a year before refermenting it with Stevnsbær cherry juice. It was then naturally refermented in bottles and kegs. We believe Moderne Dansk is a beautiful melding of the terroir from Frederiksdal and Jester King. We're excited for you to experience it!",
    abv: 7.1,
    ibu: 0
    })

label25 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKing-ModerneDansk.jpeg')
beer25.label.attach(io: label25, filename: 'JesterKing-ModerneDansk.jpeg')

beer26 = Beer.create!({
    name: "RU55",
    brewery_id: brewery5.id,
    style: "Sour - Flanders Red Ale",
    rating: 4.3,
    description: "Barrel-Aged Sour Red Ale Farmhouse red ale aged in oak barrels with wild yeast and souring bacteria. Unfiltered, unpasteurized, and 100% naturally conditioned. This beer is a tribute to our good friend and professional brewer Russ Beattie.",
    abv: 6.7,
    ibu: 0
    })

label26 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKingRU55.png')
beer26.label.attach(io: label26, filename: 'JesterKingRU55.png')

beer27 = Beer.create!({
    name: "Bière de Blanc du Bois",
    brewery_id: brewery5.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Bière de Blanc du Bois was brewed with Hill Country well water, barley, wheat, and hops. It was fermented with our unique mixed culture of microorganisms, which includes farmhouse yeasts, naturally occurring wild yeasts harvested from our air and land in the Texas Hill Country, and native souring bacteria. After extended fermentation and maturation in oak barrels, it was refermented with Texas-grown Blanc du Bois grapes. Bière de Blanc du Bois is 6.7% alcohol by volume, 3.2 pH, and has a finishing gravity of 1.004 (1.0 degree Plato). It is unfiltered, unpasteurized, and 100% naturally conditioned. The artwork for Bière de Blanc du Bois was created by our in-house artist Josh Cockrell.",
    abv: 6.7,
    ibu: 0
    })

label27 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/JesterKing-BiereDeBlancDuBois.gif')
beer27.label.attach(io: label27, filename: 'JesterKing-BiereDeBlancDuBois.gif')

beer28 = Beer.create!({
    name: "Curieux",
    brewery_id: brewery6.id,
    style: "Belgian Tripel",
    rating: 4.0,
    description: "First brewed back in 2004, Curieux was our initial foray into barrel aging. To make Curieux, we take our Tripel and let it age in bourbon barrels for six-to-eight weeks. Once that time is up, we take the beer out of our cold cellars and blend it back with a portion of fresh Tripel. The resulting rich, golden ale features smooth notes of coconut, vanilla, and a hint of bourbon.",
    abv: 10.4,
    ibu: 27
    })

label28 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Allagash-Curieux.jpeg')
beer28.label.attach(io: label28, filename: 'Allagash-Curieux.jpeg')

beer29 = Beer.create!({
    name: "White",
    brewery_id: brewery6.id,
    style: "Witbier",
    rating: 3.8,
    description: "Allagash White features a refreshing balance of citrus and spice. Wheat, coriander, and Curaçao orange peel round out the flavor of this pale straw-colored, hazy beer.",
    abv: 5.2,
    ibu: 13
    })

label29 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Allagash-White.jpeg')
beer29.label.attach(io: label29, filename: 'Allagash-White.jpeg')

beer30 = Beer.create!({
    name: "Mattina Rossa",
    brewery_id: brewery6.id,
    style: "Sour - Fruited",
    rating: 4.3,
    description: "Mattina Rossa has an aroma of fresh raspberry, strawberry preserves, and lemon rind and tastes of raspberry and pomegranate. The long finish starts with a tart citrus and ends with a pronounced biscuit flavor. We brew it with a mash of 2-Row malt and 440 pounds of local raspberries. Shortly after primary fermentation in stainless steel with our house yeast strain, the beer is aged in red wine barrels with a blend of Lactobacillus and Brettanomyces. After 18 months, fresh local raspberries are added to a portion of the barrels. The beer continues to age on the fruit for an additional six months, at which time the barrels are blended to strike the desired balance of fruit and funk and slight bitterness.",
    abv: 6.9,
    ibu: 0
    })

label30 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Allagash-MattinaRossa.webp')
beer30.label.attach(io: label30, filename: 'Allagash-MattinaRossa.webp')

beer31 = Beer.create!({
    name: "Coolship Red",
    brewery_id: brewery6.id,
    style: "Lambic - Traditional",
    rating: 4.3,
    description: "This blend of spontaneously fermented beer is aged on local raspberries. We begin brewing Coolship Red with Pilsner malt, 40% raw wheat, and aged whole-leaf hops. The unfermented wort is then transferred to a large shallow pan called a coolship, which allows the hot wort to mingle with wild yeast and souring microbiota in the Maine air. After fermenting and aging in French oak wine barrels for over two years, we add raspberries and let it rest for an additional four to five months. The finished beer is bright red in color with an aroma of raspberry and oak. Its raspberry-forward flavor is balanced by notes of light funk, apricot, and a tart, dry finish.",
    abv: 6.7,
    ibu: 0
    })

label31 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Allagash-CoolshipRed.jpg')
beer31.label.attach(io: label31, filename: 'Allagash-CoolshipRed.jpg')

beer32 = Beer.create!({
    name: "Farm To Face",
    brewery_id: brewery6.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Drinking this medium-bodied beer is like biting into a juicy, yet tart, peach. Farm to Face is brewed as a pale ale and then fermented for ten months in stainless tanks with house yeast. After primary fermentation, Pediococcus, Lactobacillus, and a whole lot of peaches are added. Aromas of green apple and graham cracker accompany a lingering peachy finish.",
    abv: 6.3,
    ibu: 0
    })

label32 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Allagash-FarmToFace.jpg')
beer32.label.attach(io: label32, filename: 'Allagash-FarmToFace.jpg')

beer33 = Beer.create!({
    name: "Pale Ale",
    brewery_id: brewery7.id,
    style: "Pale Ale - American",
    rating: 3.6,
    description: "Our most popular beer, Sierra Nevada Pale Ale is a delightful interpretation of a classic style. It has a deep amber color and an exceptionally full-bodied, complex character. Generous quantities of premium Cascade hops give the Pale Ale its fragrant bouquet and spicy flavor.",
    abv: 5.6,
    ibu: 38
    })

label33 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SierraNevada-PaleAle.png')
beer33.label.attach(io: label33, filename: 'SierraNevada-PaleAle')

beer34 = Beer.create!({
    name: "Celebration Fresh Hop IPA",
    brewery_id: brewery7.id,
    style: "IPA - American",
    rating: 3.8,
    description: "The long, cold nights of winter are a little brighter with Celebration Ale. Wonderfully robust and rich, Celebration Ale is dry-hopped for a lively, intense aroma. Brewed especially for the holidays, it is perfect for a festive gathering or for a quiet evening at home.",
    abv: 6.8,
    ibu: 65
    })

label34 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SierraNevada-Celebration.jpg')
beer34.label.attach(io: label34, filename: 'SierraNevada-Celebration.jpg')

beer35 = Beer.create!({
    name: "Narwhal Imperial Stout",
    brewery_id: brewery7.id,
    style: "Stout - American Imperial / Double",
    rating: 4.0,
    description: "Narwhal Imperial Stout is inspired by the mysterious creature that thrives in the deepest fathoms of the frigid Arctic Ocean. Featuring incredible depth of malt flavor, rich with notes of espresso, baker’s cocoa, roasted grain and a light hint of smoke, Narwhal is a massive malt-forward monster. Aggressive but refined with a velvety smooth body and decadent finish, Narwhal will age in the bottle for years to come.",
    abv: 10.2,
    ibu: 60
    })

label35 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SierraNevada-Narwhal.png')
beer35.label.attach(io: label35, filename: 'SierraNevada-Narwhal.png')

beer36 = Beer.create!({
    name: "Ruthless",
    brewery_id: brewery7.id,
    style: "IPA - Rye",
    rating: 3.7,
    description: "Rye has been a staple grain for millennia—sought after for its stubborn resilience in the field and revered for its unique flavor. Ruthless Rye IPA is brewed with rustic grains for refined flavors, combining the peppery spice of rye and the bright citrusy flavors of whole-cone hops to create a complex ale for the tumultuous transition to spring.",
    abv: 6.6,
    ibu: 55
    })

label36 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/SierraNevada-Rusthless.png')    
beer36.label.attach(io: label36, filename: 'SierraNevada-Ruthless.png')

beer37 = Beer.create!({
    name: "Saison Bernice",
    brewery_id: brewery8.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.4,
    description: "Saison Bernice is an exquisitely fermented farmhouse ale. Dry and refreshing, Bernice is made of the freshest on-hand and locally available ingredients. She receives multiple yeast additions, including Brettanomyces, and is further aged in the bottle.",
    abv: 6.5,
    ibu: 0
    })

label37 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Sante-SaisonBernice.jpg')
beer37.label.attach(io: label37, filename: 'Sante-SaisonBernice.jpg')

beer38 = Beer.create!({
    name: "West Ashley",
    brewery_id: brewery8.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.5,
    description: "Orange, lactic, and bursting with apricot aroma, West Ashley is built for consideration and conversation. While Ashley starts as a simple Saison, careful aging in French Oak Pinot Noir barrels with apricots, our house microbes, and warm encouragement transform her into a tart, complex and delectable beer.",
    abv: 7.3,
    ibu: 0
    })

label38 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Sante-WestAshley.jpg')
beer38.label.attach(io: label38, filename: 'Sante-WestAshley.jpg')

beer39 = Beer.create!({
    name: "Tomorrow, Today",
    brewery_id: brewery8.id,
    style: "IPA - American",
    rating: 4.2,
    description: "IPA with Simcoe, Citra, and Mosaic.",
    abv: 7.4,
    ibu: 30
    })

label39 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Sante-TomorrowToday.png')
beer39.label.attach(io: label39, filename: 'Sante-TomorrowToday.png')

beer40 = Beer.create!({
    name: "Southern Sunrise",
    brewery_id: brewery8.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.6,
    description: "Blended in collaboration with our longtime friends Beth and Craig Wathen, Southern Sunrise pays tribute to the Wathens and their 10 years of innovation in San Francisco. A barrel-aged saison at its core, the late addition of Georgia's favorite fruit lends a modest, yet juicy, peach finish to this smooth beer. We encourage you to share Southern Sunrise with good friends while you celebrate the sweetness of friendship and the love of beer. Sante!",
    abv: 7.6,
    ibu: 0
    })

label40 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Sante-SouthernSunrise.png')
beer40.label.attach(io: label40, filename: 'Sante-SouthernSunrise.png')

beer41 = Beer.create!({
    name: "Trumer Pils",
    brewery_id: brewery9.id,
    style: "Pilsner - German",
    rating: 3.5,
    description: "The sparkling mouth feel of each sip confirms the dedication to traditional European craftsmanship. Every aspect of the brewing process of the family-owned Trumer Brauerei in Salzburg has been recreated with exacting detail at the Trumer Brauerei Berkeley. Trumer Pils is the wonderful result of a unique and special brewing process, which sets it apart from other beers. Like champagne, the quality of a great Pilsner can be seen in the density of its bubbles. Trumer Pils produces small, tight bubbles that rise from the bottom of the glass, delivering a slightly spicy aroma, with a hint of citrus. This perfect balance of flavors is achieved by procuring the exact blend of malt and hops from Germany and Austria and fermenting the brew with proprietary yeast. Its body is accentuated by using pure, soft water and removing the malt husk prior to the mashing process. The signature of Trumer Pils is its finish. The crisp, clean and well-rounded taste leaves just a subtle touch of soft bitter flavor on the back of the palate. However, because the husk is removed before mashing, the finish won’t linger. Trumer Pils is a testament to the dedication of its Austrian and American brewmasters. The result? A true European Pilsner without compare.",
    abv: 4.9,
    ibu: 26
    })

label41 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Trumer-TrumerPils.jpeg')
beer41.label.attach(io: label41, filename: 'Trumer-TrumerPils.jpeg')

beer42 = Beer.create!({
    name: "Tripel Karmeliet",
    brewery_id: brewery10.id,
    style: "Belgian Tripel",
    rating: 4.0,
    description: "Tripel Karmeliet is still brewed to an authentic beer recipe from 1679 originating in the former Carmelite monastery in Dendermonde. Written over 300 years ago, this recipe describes the use of three kinds of grain: wheat, oats and barley. The name Tripel karmeliet thus refers both to its origin and its in-bottle refermentation. From many trial brews of multigrain tripels carried out at our brewery in the 90s, it appears that the particular historic combination of the 3 kinds of grain still remains the ideal blend.",
    abv: 8.4,
    ibu: 16
    })

label42 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Bosteels-TripelKarmeliet.jpg')
beer42.label.attach(io: label42, filename: 'Bosteels-TripelKarmeliet.jpg')

beer43 = Beer.create!({
    name: "Pauwel Kwak",
    brewery_id: brewery10.id,
    style: "Belgian Tripel",
    rating: 4.0,
    description: "In Napoleon's time Pauwel Kwak was a brewer and the owner of the 'De Hoorn' inn in Dendermonde. Mail coaches stopped there every day. But at that time coachmen were not allowed to leave their coach and horses in order to have their thirst quenched along with their passengers. As a result, the inventive innkeeper had a special Kwak glass blown that could be hung on the coach. In this way the coachman had his Kwak beer safely at hand. LOOK: Kwak is recognisable by its deep bright amber colour and a dense, creamy coloured head. The pale wood of the glass holder makes a pleasant contrast with the beer. SMELL: You will smell a mellow, fruity and malty aroma with a slightly spicy character (coriander, hops). Additional earthy and very subtle aromas of banana and perhaps also a whiff of pineapple or mango in the background. TASTE: Discover a very mellow, fruity attack, a nougat-like solidity, and a slightly spicy character with hints of liquorice passing into a warm finish that reminds you of caramelised banana. The bitterness always remains in the background but in the end emerges delicately. ",
    abv: 8.4,
    ibu: 0
    })

label43 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Bosteels-Kwak.webp')
beer43.label.attach(io: label43, filename: 'Bosteels-Kwak.webp')

beer44 = Beer.create!({
    name: "DeuS (Brut des Flandres)",
    brewery_id: brewery10.id,
    style: "Bière de Champagne / Bière Brut",
    rating: 3.9,
    description: "Refreshing as an aperitif. And just as full of flavour and rich in aroma as a beer from heaven. That's DeuS. A magnificent symbiosis of brewing a beer and creating a sparkling wine. Ideal for delighting your guests sometimes as an unusual choice with the before-dinner nibbles and amuse-geules. And perfect if you have got something to celebrate. DeuS - truly the sparkling divine based on barley. Drink cold!",
    abv: 11.5,
    ibu: 11
    })

label44 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/Bosteels-Deus.png')
beer44.label.attach(io: label44, filename: 'Bosteels-Deus.png')

###########
# Reviews #
###########

review1 = Review.create!({
    rating: 4.25,
    body: "Stellar exemplar of the style, even if it's in the states",
    beer_id: beer1.id,
    user_id: user1.id
    })

photo1 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/RealityCzech1.jpg')
review1.photo.attach(io: photo1, filename: 'RealityCzech1.jpg')


review2 = Review.create!({
    rating: 4.0,
    body: "this is the beer I want when I want it done clean and clear. wish we had this on the east coast",
    beer_id: beer1.id,
    user_id: user3.id
    })

review3 = Review.create!({
    rating: 3.5,
    body: "First of a flight. Crisp and light with pleasant hoppy hints.",
    beer_id: beer1.id,
    user_id: user4.id
    })

review4 = Review.create!({
    rating: 4.1,
    body: "Light, wheaty malt body with bright, herbal hops. Moderate bitterness.",
    beer_id: beer1.id ,
    user_id: user2.id
    })

review5 = Review.create!({
    rating: 4.7,
    body: "just the best beer",
    beer_id: beer2.id,
    user_id: user5.id
    })

photo2 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/DeathAndTaxes1.jpg')
review5.photo.attach(io: photo2, filename: 'DeathAndTaxes1.jpg')

review6 = Review.create!({
    rating: 5.0,
    body: "Desert island beer. One of my all time favorites.",
    beer_id: beer2.id,
    user_id: user2.id
    })
    
review7 = Review.create!({
    rating: 4.0,
    body: "Nice and malty. A nice change of pace for California.",
    beer_id: beer2.id,
    user_id: user3.id
    })

photo3 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/DeathAndTaxes2.jpeg')
review7.photo.attach(io: photo3, filename: 'DeathAndTaxes2.jpeg')
        
review8 = Review.create!({
    rating: 4.3,
    body: "Really interesting and unique flavor",
    beer_id: beer2.id,
    user_id: user1.id
    })

review9 = Review.create!({
    rating: 3.7,
    body: "Clean and very drinkable.",
    beer_id: beer12.id,
    user_id: user4.id
    })

photo4 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/BoneyFingers1.jpg')
review9.photo.attach(io: photo4, filename: 'BoneyFingers1.jpg')

review10 = Review.create!({
    rating: 3.9,
    body: "Dry as a bone. Heh. Get it? Bone. Heh.",
    beer_id: beer12.id,
    user_id: user5.id
    })

review11 = Review.create!({
    rating: 3.8,
    body: "More roasted than Death and Taxes, too much so, for my taste. Otherwise faultless, though, so still decent.",
    beer_id: beer12.id,
    user_id: user3.id
    })

review12 = Review.create!({
    rating: 4.0,
    body: "Light and crisp with anspice accent. Banana tasting on the backside.",
    beer_id: beer3.id,
    user_id: user1.id
    })

photo5 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/SeizonBretta1.jpg')
review12.photo.attach(io: photo5, filename: 'SeizonBretta1.jpg')


review13 = Review.create!({
    rating: 4.2,
    body: "4.2 Held up nicely over the years, 6?",
    beer_id: beer3.id,
    user_id: user3.id
    })

review14 = Review.create!({
    rating: 4.0,
    body: "Great funk and flavoring.",
    beer_id: beer3.id,
    user_id: user4.id
    })

review15 = Review.create!({
    rating: 4.2,
    body: "nice low sour, quite dry, citrus, dried fruits, dry wood in aftertaste, very balanced.",
    beer_id: beer3.id,
    user_id: user5.id
    })

photo6 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/SeizonBretta2.jpg')
review15.photo.attach(io: photo6, filename: 'SeizonBretta2.jpg')



review16 = Review.create!({
    rating: 3.3,
    body: "Meh maybe just not my preference but not the best tasting ale I’ve had",
    beer_id: beer3.id,
    user_id: user2.id
    })

review17 = Review.create!({
    rating: 4.2,
    body: "2017 bottles. Chalky. Funky. Not as acidic as expected. Delicious",
    beer_id: beer4.id,
    user_id: user5.id
    })

photo7 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/PechenBrett1.jpeg')
review17.photo.attach(io: photo7, filename: 'PechenBrett1.jpeg')

review18 = Review.create!({
    rating: 4.0,
    body: "Classic wood funk and subdued resonance. Lightly sour, subtle fruit, somewhat dry. Very enjoyable.",
    beer_id: beer4.id,
    user_id: user4.id
    })

review19 = Review.create!({
    rating: 4.5,
    body: "Tart and bright up front with a mellow woody peach finish. Super delicious",
    beer_id: beer4.id,
    user_id: user2.id
    })

review20 = Review.create!({
    rating: 4.0,
    body: "Probably the best pilsner I've ever tried. Would drink again.",
    beer_id: beer5.id,
    user_id: user1.id
    })

photo8 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/StsPils1.jpg')
review20.photo.attach(io: photo8, filename: 'StsPils1.jpg')

review21 = Review.create!({
    rating: 4.0,
    body: "Criiiiissssspppppiiiiiiii Boi",
    beer_id: beer5.id,
    user_id: user5.id
    })

photo9 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/StsPils2.jpg')
review21.photo.attach(io: photo9, filename: 'StsPils2.jpg')

review22 = Review.create!({
    rating: 4.1,
    body: "Brought home from San Francisco, smooth/not typical Pilsner. Perfectly clear brew, presents a perfectly clean taste.",
    beer_id: beer5.id,
    user_id: user3.id
    })

review23 = Review.create!({
    rating: 4.3,
    body: "Solid pils for a rainy Sunday afternoon",
    beer_id: beer5.id,
    user_id: user4.id
    })

review24 = Review.create!({
    rating: 3.7,
    body: "Tangy but refreshing!!",
    beer_id: beer5.id,
    user_id: user2.id
    })

review25 = Review.create!({
    rating: 4.5,
    body: "Citrus. Dry. Fresh cut grass.",
    beer_id: beer6.id,
    user_id: user1.id
    })

photo10 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/BlindPig1.jpg')
review25.photo.attach(io: photo10, filename: 'BlindPig1.jpg')

review26 = Review.create!({
    rating: 4.0,
    body: "Still a great IPA and a great history behind it.",
    beer_id: beer6.id,
    user_id: user3.id
    })

review27 = Review.create!({
    rating: 3.9,
    body: "Very clean crisp flavor. Nice hoppy flavor but nothing super dank or fruity.",
    beer_id: beer6.id,
    user_id: user2.id
    })

photo11 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/BlindPig2.jpg')
review27.photo.attach(io: photo11, filename: 'BlindPig2.jpg')

review28 = Review.create!({
    rating: 3.8,
    body: "Great Balanced Bitterness.",
    beer_id: beer6.id,
    user_id: user5.id
    })

review29 = Review.create!({
    rating: 4.4,
    body: "Sour in the beginning, but finishes off smooth!",
    beer_id: beer7.id,
    user_id: user1.id
    })

review30 = Review.create!({
    rating: 4.6,
    body: "Nice crisp taste with a unique flavor. That’s how you do a sour.",
    beer_id: beer7.id,
    user_id: user4.id
    })

photo12 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Supplication1.jpeg')
review30.photo.attach(io: photo12, filename: 'Supplication1.jpeg')

review31 = Review.create!({
    rating: 4.7,
    body: "Crazy how tastes change. Had this 2014 @ GABF. 2.5. Amazing now. Wasn't into sours then. World class.",
    beer_id: beer7.id,
    user_id: user3.id
    })

photo13 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Supplication2.jpg')
review31.photo.attach(io: photo13, filename: 'Supplication2.jpg')

review32 = Review.create!({
    rating: 3.9,
    body: "Taste pretty good....got to be a sour guy to really appreciate it.",
    beer_id: beer7.id,
    user_id: user2.id
    })

review33 = Review.create!({
    rating: 4.5,
    body: "Found a 2014 bottle of this stuff. Still amazing after all these years.",
    beer_id: beer8.id,
    user_id: user1.id
    })

photo14 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Temptation1.jpg')
review33.photo.attach(io: photo14, filename: 'Temptation1.jpg')

review34 = Review.create!({
    rating: 4.2,
    body: "Great stuff, good amount of citrusy sour funk from the Brett.",
    beer_id: beer8.id,
    user_id: user4.id
    })

review35 = Review.create!({
    rating: 4.4,
    body: "Super dry, tart and sour devilishly good!",
    beer_id: beer8.id,
    user_id: user3.id
    })

photo15 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Temptation2.jpg')
review35.photo.attach(io: photo15, filename: 'Temptation2.jpg')

review36 = Review.create!({
    rating: 5.0,
    body: "Best beer from the west coast.",
    beer_id: beer9.id,
    user_id: user5.id
    })

review37 = Review.create!({
    rating: 4.6,
    body: "A little carmely. Grapefruit. Delicious.",
    beer_id: beer9.id,
    user_id: user1.id
    })

review38 = Review.create!({
    rating: 3.1,
    body: "First Pliny!",
    beer_id: beer9.id,
    user_id: user3.id
    })

review39 = Review.create!({
    rating: 3.7,
    body: "Plenty of floral, resinous pine.",
    beer_id: beer9.id,
    user_id: user4.id
    })

review40 = Review.create!({
    rating: 4.5,
    body: "The Elder. Respect your elders.",
    beer_id: beer9.id,
    user_id: user2.id
    })

photo16 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Pliny1.jpg')
review40.photo.attach(io: photo16, filename: 'Pliny1.jpg')

review41 = Review.create!({
    rating: 4.9,
    body: "Great out of the bottle and on draft!",
    beer_id: beer10.id,
    user_id: user3.id
    })

review42 = Review.create!({
    rating: 4.2,
    body: "A: clear, golden, pale, light head // S: grape, green apple, grassy, honey // T: funky, farmhouse, oak, sour, citrus, floral, vinous // M: crisp, low carbonation, tannin",
    beer_id: beer10.id,
    user_id: user5.id
    })

photo17 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Beatification1.jpg')
review42.photo.attach(io: photo17, filename: 'Beatification1.jpg')

review43 = Review.create!({
    rating: 4.0,
    body: "Wonderful. Dry, but tart and subtle fruity back end.",
    beer_id: beer10.id,
    user_id: user2.id
    })

photo18 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Beatification2.jpg')
review43.photo.attach(io: photo18, filename: 'Beatification2.jpg')

review44 = Review.create!({
    rating: 4.4,
    body: "Blessed be, holy Consecration! Pours a beautiful amber. Cabernet barrel present on the nose. Rich black currant, cherries, and oak highlight the profile. Always a treat.",
    beer_id: beer11.id,
    user_id: user4.id
    })

photo19 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Consecratoin1.jpg')
review44.photo.attach(io: photo19, filename: 'Consecratoin1.jpg')


review45 = Review.create!({
    rating: 4.0,
    body: "Had in my fridge for quite a while now. From my buddy. Dry, tart, oak.",
    beer_id: beer11.id,
    user_id: user1.id
    })

review46 = Review.create!({
    rating: 4.5,
    body: "Very good, getting a lot of cabernet sauvignon, not much currants. Lovely tart wild ale",
    beer_id: beer11.id,
    user_id: user5.id
    })

photo20 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Consecration2.jpg')
review46.photo.attach(io: photo20, filename: 'Consecration2.jpg')

review47 = Review.create!({
    rating: 4.1,
    body: "pretty good sour. fruity w barrel tones and a nice mouthfeel. I don’t like it when sours taste like liquid warheads",
    beer_id: beer11.id,
    user_id: user3.id
    })

review48 = Review.create!({
    rating: 4.0,
    body: "Rhubarb saison, a great way to use Rhubarb for sure",
    beer_id: beer13.id,
    user_id: user1.id
    })

photo21 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Leifer1.jpg')
review48.photo.attach(io: photo21, filename: 'Leifer1.jpg')

review49 = Review.create!({
    rating: 4.2,
    body: "Not a lot of rhubarb but really good.",
    beer_id: beer13.id,
    user_id: user3.id
    })

review50 = Review.create!({
    rating: 4.4,
    body: "Wouldn't know a rhubarb if it hit me in the face but this beer rocks",
    beer_id: beer13.id,
    user_id: user4.id
    })

review51 = Review.create!({
    rating: 4.5,
    body: "Funky, bright, and a fantastic minerality. What a fantastic beer.",
    beer_id: beer14.id,
    user_id: user2.id
    })

review52 = Review.create!({
    rating: 4.0,
    body: "Brings the funk. Tart and tasty.",
    beer_id: beer14.id,
    user_id: user3.id
    })

photo22 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/CallToMind1.jpg')
review52.photo.attach(io: photo22, filename: 'CallToMind1.jpg')

review53 = Review.create!({
    rating: 4.3,
    body: "Held up really well over 2 years. Smooth and funky with hints of camomile.",
    beer_id: beer14.id,
    user_id: user1.id
    })

review54 = Review.create!({
    rating: 4.6,
    body: "Very tasty refreshing farmhouse.",
    beer_id: beer14.id,
    user_id: user5.id
    })

photo23 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/CallToMind2.jpg')
review54.photo.attach(io: photo23, filename: 'CallToMind2.jpg')

review55 = Review.create!({
    rating: 3.8,
    body: "Nice and light, lemony. Not sour, has a a little funk to it.",
    beer_id: beer15.id,
    user_id: user3.id
    })

photo24 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Whistlin1.jpg')
review55.photo.attach(io: photo24, filename: 'Whistlin1.jpg')

review56 = Review.create!({
    rating: 4.6,
    body: "Wow, 4.6, lemongrass nice and subtle, compliments the oak and yeast so well.",
    beer_id: beer15.id,
    user_id: user5.id
    })

review57 = Review.create!({
    rating: 4.7,
    body: "One of the best beers I’ve had in NY. Packed full of flavor and completely crushable.",
    beer_id: beer15.id,
    user_id: user2.id
    })

review58 = Review.create!({
    rating: 4.0,
    body: "About as high as a pilsner gets.",
    beer_id: beer16.id,
    user_id: user4.id
    })

review59 = Review.create!({
    rating: 4.1,
    body: "Wanted this for the name, mostly, but this is a top notch Pilsner.",
    beer_id: beer16.id,
    user_id: user3.id
    })

photo25 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Palatine1.jpg')
review59.photo.attach(io: photo25, filename: 'Palatine1.jpg')

review60 = Review.create!({
    rating: 3.8,
    body: "Bready and crispy.",
    beer_id: beer16.id,
    user_id: user1.id
    })

review61 = Review.create!({
    rating: 5.0,
    body: "Off the charts delicious tonight.",
    beer_id: beer16.id,
    user_id: user5.id
    })

review62 = Review.create!({
    rating: 4.5,
    body: "Broke the ceiling. It’s a 4.5 for sure.",
    beer_id: beer17.id,
    user_id: user2.id
    })

photo26 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Qualify1.jpg')
review62.photo.attach(io: photo26, filename: 'Qualify1.jpg')

review63 = Review.create!({
    rating: 4.3,
    body: "While I don't normally have the thrills for the pils, I could drink this all day.",
    beer_id: beer17.id,
    user_id: user3.id
    })

review64 = Review.create!({
    rating: 4.7,
    body: "Wow I forgot how good this is. Stony and lively on the palate, elevates the florals, crackers, bitter.",
    beer_id: beer17.id,
    user_id: user4.id
    })

review65 = Review.create!({
    rating: 4.2,
    body: "Suarez just hits differently.",
    beer_id: beer17.id,
    user_id: user1.id
    })

review66 = Review.create!({
    rating: 4.3,
    body: "Excellent german style pilsner, cheers!",
    beer_id: beer17.id,
    user_id: user5.id
    })

review67 = Review.create!({
    rating: 4.2,
    body: "Just another incredibly clean beer from Suarez.",
    beer_id: beer18.id,
    user_id: user4.id
    })

review68 = Review.create!({
    rating: 4.3,
    body: "Balanced, bright, citrusy. I’ve said it before, Suarez can do no wrong.",
    beer_id: beer18.id,
    user_id: user3.id
    })

photo27 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/CrispyLittle1.jpg')
review68.photo.attach(io: photo27, filename: 'CrispyLittle1.jpg')

review69 = Review.create!({
    rating: 4.7,
    body: "2 months past the “best by” date and still amazing. Oranges, biscuits, and a subtle hint of the fruity yeast character in the background. Solidly bitter close that also brings in pine notes. Fluffy base. Such a flavor bomb at 4.5%",
    beer_id: beer18.id,
    user_id: user1.id
    })

review70 = Review.create!({
    rating: 3.9,
    body: "Couple days past best by, tastes like a hoppy lager, pretty tasty, smooth, crisp.",
    beer_id: beer19.id,
    user_id: user5.id
    })

review71 = Review.create!({
    rating: 4.1,
    body: "Lemon, floral, slight tropics. Could use some more beery bitterness in a pale but hard to say at 4.5 abv.",
    beer_id: beer19.id,
    user_id: user3.id
    })

review72 = Review.create!({
    rating: 4.3,
    body: "Wow. So refreshingly clean, medium-bodied, subtle hops and light. Just wonderful.",
    beer_id: beer19.id,
    user_id: user2.id
    })

photo28 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/HomeSpun1.jpg')
review72.photo.attach(io: photo28, filename: 'HomeSpun1.jpg')

review73 = Review.create!({
    rating: 4.2,
    body: "Light refreshing and flavorful. Slight bitterness on the backend and a hint of citrus. Quite enjoyable!",
    beer_id: beer20.id,
    user_id: user4.id
    })

photo29 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/PetitPrince1.jpg')
review73.photo.attach(io: photo29, filename: 'PetitPrince1.jpg')

review74 = Review.create!({
    rating: 2.5,
    body: "Bitter to me but tasty nonetheless",
    beer_id: beer20.id,
    user_id: user1.id
    })

photo30 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/PetitPrince2.jpg')
review74.photo.attach(io: photo30, filename: 'PetitPrince2.jpg')

review75 = Review.create!({
    rating: 3.5,
    body: "Easy drinking, light, and simple. Slightly syrupy edge to the flavor. Very pleasant table beer. Nothing groundbreaking!",
    beer_id: beer20.id,
    user_id: user3.id
    })

review76 = Review.create!({
    rating: 4.1,
    body: "Beautiful little Saison.",
    beer_id: beer20.id,
    user_id: user2.id
    })

review77 = Review.create!({
    rating: 4.2,
    body: "Lemon, orange & pear notes. Touch of barnyard funk. Dry & always good.",
    beer_id: beer21.id,
    user_id: user5.id
    })

review78 = Review.create!({
    rating: 4.3,
    body: "Smooth south with a berry hoppy and butter finish. Soft but a bit earthy and rustic in the finish.",
    beer_id: beer21.id,
    user_id: user3.id
    })

photo31 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/DasWunderkind1.jpg')
review78.photo.attach(io: photo31, filename: 'DasWunderkind1.jpg')

review79 = Review.create!({
    rating: 3.8,
    body: "A very tasty brew a little more on the sour side than I am accustomed to Saisons being but I like it.",
    beer_id: beer21.id,
    user_id: user1.id
    })

review80 = Review.create!({
    rating: 4.0,
    body: "Dry. Tart. Good!",
    beer_id: beer21.id,
    user_id: user4.id
    })

review81 = Review.create!({
    rating: 4.5,
    body: "Super good. Love a good sour barrel aged stout.",
    beer_id: beer22.id,
    user_id: user2.id
    })

photo32 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/FunkMetal1.jpg')
review81.photo.attach(io: photo32, filename: 'FunkMetal1.jpg')

review82 = Review.create!({
    rating: 3.3,
    body: "Got really grossed out by the smell of it but it tastes a lot better than I thought.",
    beer_id: beer22.id,
    user_id: user3.id
    })

review83 = Review.create!({
    rating: 3.0,
    body: "Not what I would call a stout very sour and drinks more like wine with the fruitiness.",
    beer_id: beer22.id,
    user_id: user4.id
    })

photo33 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/FunkMetal2.jpg')
review83.photo.attach(io: photo33, filename: 'FunkMetal2.jpg')

review84 = Review.create!({
    rating: 4.4,
    body: "Aroma of sweet raspberry jam, pleasantly surprised by the tartness and lack of sweetness.",
    beer_id: beer23.id,
    user_id: user5.id
    })

photo34 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Atrial1.jpg')
review84.photo.attach(io: photo34, filename: 'Atrial1.jpg')

review85 = Review.create!({
    rating: 4.5,
    body: "Almost jammy, but super sweet.",
    beer_id: beer23.id,
    user_id: user2.id
    })

review86 = Review.create!({
    rating: 4.8,
    body: "Super sour and super delicious.",
    beer_id: beer23.id,
    user_id: user1.id
    })

review87 = Review.create!({
    rating: 5.0,
    body: "Possibly the best sour I’ve ever had",
    beer_id: beer23.id,
    user_id: user3.id
    })

photo35 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Atrial2.jpg')
review87.photo.attach(io: photo35, filename: 'Atrial2.jpg')

review88 = Review.create!({
    rating: 3.8,
    body: "Interesting choice to sour a low abv English mild. I like it.",
    beer_id: beer24.id,
    user_id: user2.id
    })

review89 = Review.create!({
    rating: 4.2,
    body: "Tasty dark farmhouse. Dry and crisp carbonation. Jester has nice yeast.",
    beer_id: beer24.id,
    user_id: user3.id
    })

review90 = Review.create!({
    rating: 3.9,
    body: "Roasty farmhouse.",
    beer_id: beer24.id,
    user_id: user1.id
    })

photo36 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/CommercialSuicide1.jpg')
review90.photo.attach(io: photo36, filename: 'CommercialSuicide1.jpg')

review91 = Review.create!({
    rating: 4.5,
    body: "Still great. More tart than I recall. Funky cherry and some underlying pie spices.",
    beer_id: beer25.id,
    user_id: user5.id
    })

photo37 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/ModerneDansk1.jpg')
review91.photo.attach(io: photo37, filename: 'ModerneDansk1.jpg')

review92 = Review.create!({
    rating: 4.6,
    body: "This is really good. Very subtle. Dry wood tannins, cherry, sweet soft sour. Amazing. So well balanced.",
    beer_id: beer25.id,
    user_id: user1.id
    })

photo38 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/ModerneDansk2.jpg')
review92.photo.attach(io: photo38, filename: 'ModerneDansk2.jpg')

review93 = Review.create!({
    rating: 4.4,
    body: "Absolutely divine.",
    beer_id: beer25.id,
    user_id: user2.id
    })

review94 = Review.create!({
    rating: 4.7,
    body: "Aging sooooo wellll!!!!! This beer is a crusher with tons of Cherry and little to no acidity. Tasting like liquid cherry pie",
    beer_id: beer25.id,
    user_id: user3.id
    })

review95 = Review.create!({
    rating: 4.5,
    body: "Blend#8, March 2018. Funky barrel aroma. Fruity notes (red berries). Sour. Woody undertones. Dry.",
    beer_id: beer26.id,
    user_id: user1.id
    })

review96 = Review.create!({
    rating: 3.7,
    body: "Dark fruit dry tart fruity.",
    beer_id: beer26.id,
    user_id: user4.id
    })

photo39 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/RU55.jpg')
review96.photo.attach(io: photo39, filename: 'RU55.jpg')

review97 = Review.create!({
    rating: 4.0,
    body: "Looking for a bit more funk and less acidity. Not bad though.",
    beer_id: beer26.id,
    user_id: user2.id
    })

review98 = Review.create!({
    rating: 4.95,
    body: "This is incredible. It takes a refined palate to appreciate this true beauty.",
    beer_id: beer27.id,
    user_id: user3.id
    })

photo40 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/BiereDeBlancDuBois1.jpg')
review98.photo.attach(io: photo40, filename: 'BiereDeBlancDuBois1.jpg')

review99 = Review.create!({
    rating: 3.0,
    body: "Interesting. Three times fermentation with wine.",
    beer_id: beer27.id,
    user_id: user1.id
    })

review100 = Review.create!({
    rating: 4.1,
    body: "Really nice co ferment. Has some good sweetness.",
    beer_id: beer27.id,
    user_id: user5.id
    })

review101 = Review.create!({
    rating: 4.5,
    body: "Wine like, dry & fruity. Well balanced and easy drinking.",
    beer_id: beer27.id,
    user_id: user4.id
    })

review102 = Review.create!({
    rating: 4.2,
    body: "Delicious as always. Love the smaller format bottle.",
    beer_id: beer28.id,
    user_id: user2.id
    })

photo41 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Curieux1.jpg')
review102.photo.attach(io: photo41, filename: 'Curieux1.jpg')

review103 = Review.create!({
    rating: 4.0,
    body: "Belgiany spices & fruit flavors. Full-bodied, yet light. Instead of Acadia for spring break this year, it’s just a deck chair and Maine beer.",
    beer_id: beer28.id,
    user_id: user3.id
    })

review104 = Review.create!({
    rating: 4.4,
    body: "Smooth upfront, distinctly Bourbon taste on the back. Pours a great golden.",
    beer_id: beer28.id,
    user_id: user1.id
    })

photo42 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Curieux2.jpg')
review104.photo.attach(io: photo42, filename: 'Curieux2.jpg')

review105 = Review.create!({
    rating: 4.5,
    body: "Big on the Belgian. Big on the booze.",
    beer_id: beer28.id,
    user_id: user2.id
    })

review106 = Review.create!({
    rating: 4.6,
    body: "This continues to be a favorite. Lovely Tripel with subtle spices and barrel-aged flavoring. My beloved is quite fond of it too.",
    beer_id: beer28.id,
    user_id: user5.id
    })

review107 = Review.create!({
    rating: 4.1,
    body: "Just has a warm and buttery bourbon thing going on, good sipper.",
    beer_id: beer28.id,
    user_id: user4.id
    })

review108 = Review.create!({
    rating: 4.0,
    body: "Could be my everyday beer.",
    beer_id: beer29.id,
    user_id: user1.id
    })

photo43 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/White1.jpg')
review108.photo.attach(io: photo43, filename: 'White1.jpg')

review109 = Review.create!({
    rating: 5.0,
    body: "I am really warming up to wheat beer. #palateisgrowing!",
    beer_id: beer29.id,
    user_id: user2.id
    })

review110 = Review.create!({
    rating: 3.8,
    body: "Solid standby.",
    beer_id: beer29.id,
    user_id: user3.id
    })

review111 = Review.create!({
    rating: 4.0,
    body: "Great beer. Deserves the 4.",
    beer_id: beer29.id,
    user_id: user4.id
    })

review112 = Review.create!({
    rating: 5.0,
    body: "This is my go-to favorite beer. It’s clean, refreshing and super tasty. It’s not hard to have multiple of these and keep coming back for more.",
    beer_id: beer29.id,
    user_id: user5.id
    })

review113 = Review.create!({
    rating: 4.1,
    body: "Nose: earthy musty barn boards raspberry funk Taste: herbal medicinal raspberry slight vinegar upfront & tart very dry rasp lemon on backend.",
    beer_id: beer30.id,
    user_id: user4.id
    })

photo44 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Mattina1.jpg')
review113.photo.attach(io: photo44, filename: 'Mattina1.jpg')

review114 = Review.create!({
    rating: 4.5,
    body: "Wow! My tastebuds are standing at attention. Puckering sour from the get-go with raspberry blasting through. Great barrel-aged taste.",
    beer_id: beer30.id,
    user_id: user3.id
    })

review115 = Review.create!({
    rating: 3.0,
    body: "Bottled 5 yrs ago next month. Not as good as I remember, might be the age and/or lack of carbonation.",
    beer_id: beer30.id,
    user_id: user2.id
    })

review116 = Review.create!({
    rating: 3.7,
    body: "2015 bottle, smells more sour than it tastes. A lot of raspberries.",
    beer_id: beer30.id,
    user_id: user1.id
    })

review117 = Review.create!({
    rating: 4.5,
    body: "Acidic, tart and a nice raspberry sweetness on the end. Really really good stuff.",
    beer_id: beer31.id,
    user_id: user3.id
    })

photo45 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Coolship1.jpg')
review117.photo.attach(io: photo45, filename: 'Coolship1.jpg')

review118 = Review.create!({
    rating: 4.4,
    body: "Allagash is one of a handful of American breweries who makes consistent wild ales with restrained acidity.",
    beer_id: beer31.id,
    user_id: user5.id
    })

review119 = Review.create!({
    rating: 4.0,
    body: "Always been a fan of Allagash's white but this lambic is very fruity with a dry finish. Raspberries are center stage with citrus notes.",
    beer_id: beer31.id,
    user_id: user2.id
    })

photo46 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Coolship2.jpg')
review119.photo.attach(io: photo46, filename: 'Coolship2.jpg')

review120 = Review.create!({
    rating: 4.0,
    body: "Perfect. Not too sour or sweet.",
    beer_id: beer32.id,
    user_id: user3.id
    })

review121 = Review.create!({
    rating: 3.9,
    body: "Very tart but not overwhelming. Clean finish.",
    beer_id: beer32.id,
    user_id: user2.id
    })

photo47 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/FarmToFace1.jpg')
review121.photo.attach(io: photo47, filename: 'FarmToFace1.jpg')

review122 = Review.create!({
    rating: 3.8,
    body: "Bit of a bottle bomb. This half of glass is good though.",
    beer_id: beer32.id,
    user_id: user4.id
    })

photo48 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/FarmToFace2.jpg')
review122.photo.attach(io: photo48, filename: 'FarmToFace2.jpg')

review123 = Review.create!({
    rating: 4.1,
    body: "Peach juice! Of the finest!",
    beer_id: beer32.id,
    user_id: user1.id
    })

review124 = Review.create!({
    rating: 3.5,
    body: "Can’t go wrong with a classic.",
    beer_id: beer33.id,
    user_id: user1.id
    })

photo49 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/PaleAle1.jpg')
review124.photo.attach(io: photo49, filename: 'PaleAle1.jpg')

review125 = Review.create!({
    rating: 3.3,
    body: "A standard IPA, still a good one.",
    beer_id: beer33.id,
    user_id: user2.id
    })

review126 = Review.create!({
    rating: 3.0,
    body: "Fine beer. Nothing too special.",
    beer_id: beer33.id,
    user_id: user3.id
    })

review127 = Review.create!({
    rating: 4.5,
    body: "Simply one of my favorite pale ales. Bring on Spring grilling.",
    beer_id: beer33.id,
    user_id: user4.id
    })

photo50 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/PaleAle2.jpg')
review127.photo.attach(io: photo50, filename: 'PaleAle2.jpg')

review128 = Review.create!({
    rating: 4.0,
    body: "Great carmel malty sweet nose, nice medium body, Piney hop bite To the finish, quite tasty",
    beer_id: beer34.id,
    user_id: user5.id
    })

photo51 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Celebration1.jpg')
review128.photo.attach(io: photo51, filename: 'Celebration1.jpg')

review129 = Review.create!({
    rating: 3.5,
    body: "Very Nice beer with a lot of hoppy and fruity flavours.",
    beer_id: beer34.id,
    user_id: user2.id
    })

review130 = Review.create!({
    rating: 4.5,
    body: "Not a big IPA drinker, but this was just as advertised: Fresh. Very good flavor. Drank the whole thing gladly. I’d drink this again. Great clean crisp flavor.",
    beer_id: beer34.id,
    user_id: user3.id
    })

review131 = Review.create!({
    rating: 4.0,
    body: "Sweet lightly toasty malts with tea undertones and cooked-peach hop character. Tannic bitterness. Leans toward English style, very good",
    beer_id: beer34.id,
    user_id: user1.id
    })

review132 = Review.create!({
    rating: 3.8,
    body: "Smooth with strong vanilla notes.",
    beer_id: beer35.id,
    user_id: user4.id
    })

review133 = Review.create!({
    rating: 2.5,
    body: "It’s an average Stout. Nothing truly special about it.",
    beer_id: beer35.id,
    user_id: user3.id
    })

photo52 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Narwhal1.jpg')
review133.photo.attach(io: photo52, filename: 'Narwhal1.jpg')

review134 = Review.create!({
    rating: 4.4,
    body: "Can't tell if the after taste is just that good or if it mixed well with my toothpaste.",
    beer_id: beer35.id,
    user_id: user5.id
    })

review135 = Review.create!({
    rating: 4.0,
    body: "A very tasty imperial stout.",
    beer_id: beer35.id,
    user_id: user1.id
    })

review136 = Review.create!({
    rating: 3.5,
    body: "Tastes like a torpedo base with rye thrown in. Solid.",
    beer_id: beer36.id,
    user_id: user2.id
    })

photo53 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Ruthless1.jpeg')
review136.photo.attach(io: photo53, filename: 'Ruthless1.jpeg')

review137 = Review.create!({
    rating: 3.7,
    body: "This is a nice and peppery IPA that is not lacking in spice notes.",
    beer_id: beer36.id,
    user_id: user3.id
    })

review138= Review.create!({
    rating: 3.3,
    body: "Rye beers are funky.",
    beer_id: beer36.id,
    user_id: user4.id
    })

review139 = Review.create!({
    rating: 4.0,
    body: "Delicious sharp-edged IPA with plenty of citrus/pine hops alongside spicy rye notes.",
    beer_id: beer36.id,
    user_id: user5.id
    })

review140 = Review.create!({
    rating: 2.0,
    body: "Nope. Not my style.",
    beer_id: beer36.id,
    user_id: user1.id
    })

review141 = Review.create!({
    rating: 4.2,
    body: "Very clean solid saison.",
    beer_id: beer37.id,
    user_id: user1.id
    })

photo54 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Bernice1.jpg')
review141.photo.attach(io: photo54, filename: 'Bernice1.jpg')

review142 = Review.create!({
    rating: 5.0,
    body: "I think I put this bottle in the cellar in 2016. It has aged well. Sweet start, dry finish, nice 'brettyness'.",
    beer_id: beer37.id,
    user_id: user3.id
    })

photo55 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Bernice2.jpg')
review142.photo.attach(io: photo55, filename: 'Bernice2.jpg')

review143 = Review.create!({
    rating: 4.6,
    body: "This is everything I want in a saison!",
    beer_id: beer37.id,
    user_id: user5.id
    })

review144 = Review.create!({
    rating: 4.7,
    body: "Crazy how different this tastes every time I have it. Not lemony as the last time I had it. This is the latest release.",
    beer_id: beer37.id,
    user_id: user4.id
    })

review145 = Review.create!({
    rating: 4.0,
    body: "Dry and refreshing. Perfect for a sunny day.",
    beer_id: beer37.id,
    user_id: user2.id
    })

review146 = Review.create!({
    rating: 5.0,
    body: "Really good apricot saison!",
    beer_id: beer38.id,
    user_id: user3.id
    })

photo56 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/WestAshley1.jpg')
review146.photo.attach(io: photo56, filename: 'WestAshley1.jpg')

review147 = Review.create!({
    rating: 4.6,
    body: "4.6 right combo of tart and sweet. Really good.",
    beer_id: beer38.id,
    user_id: user5.id
    })

review148 = Review.create!({
    rating: 4.3,
    body: "Refreshing and oaky depth. Not getting much apricot though.",
    beer_id: beer38.id,
    user_id: user2.id
    })

review149 = Review.create!({
    rating: 4.5,
    body: "Tart, fruity and funky peach. Oak mellows this perfectly. Tough to beat for a peach wild ale.",
    beer_id: beer38.id,
    user_id: user1.id
    })

review150 = Review.create!({
    rating: 4.4,
    body: "Supporting local businesses seldom tastes this good. SARA has definitely refined their haze game since the last time I had this one.",
    beer_id: beer39.id,
    user_id: user2.id
    })

review151 = Review.create!({
    rating: 4.0,
    body: "Tastes more yeast-y than I remember. First time trying from a can.",
    beer_id: beer39.id,
    user_id: user1.id
    })

photo57 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/TomorrowToday.jpg')
review151.photo.attach(io: photo57, filename: 'TomorrowToday.jpg')

review152 = Review.create!({
    rating: 4.1,
    body: "Good batch, but not the best I’ve had. Still one of my favorite IPA’s by SARA or anyone else. Lots of apricot and guava. Creamy and bitter.",
    beer_id: beer39.id,
    user_id: user4.id
    })

review153 = Review.create!({
    rating: 4.5,
    body: "Wow, the nose on this smells so jammy, crazy. Don't remember it like this. Probably the best I've had from them, IPA wise. Nice and smooth.",
    beer_id: beer39.id,
    user_id: user5.id
    })

review154 = Review.create!({
    rating: 4.9,
    body: "One of the fruitier bottles, tart peach in the body and skins on the nose.",
    beer_id: beer40.id,
    user_id: user1.id
    })

photo58 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/SouthernSunrise1.jpg')
review154.photo.attach(io: photo58, filename: 'SouthernSunrise1.jpg')

review155 = Review.create!({
    rating: 4.8,
    body: "Fruit has faded but starting to develop some old sante funk and love.",
    beer_id: beer40.id,
    user_id: user2.id
    })

photo59 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/SouthernSunrise2.jpg')
review155.photo.attach(io: photo59, filename: 'SouthernSunrise2.jpg')

review156 = Review.create!({
    rating: 4.7,
    body: "Classic sante drinkable beer with the nice peach flavor.",
    beer_id: beer40.id,
    user_id: user4.id
    })

review157 = Review.create!({
    rating: 4.4,
    body: "4.4. Really enjoyed this one. Peaches are subtle and the typical sara funk is present",
    beer_id: beer40.id,
    user_id: user3.id
    })

review158 = Review.create!({
    rating: 4.45,
    body: "4.45. Backlog. Nice ripe peach w a little bit of funk. Aging pretty nicely but the peach is fading a bit.",
    beer_id: beer40.id,
    user_id: user5.id
    })

review159 = Review.create!({
    rating: 3.8,
    body: "Refreshing and crisp. Super easy drinking. I enjoyed the slight fruity finish. Definitely one to sit back and relax with.",
    beer_id: beer41.id,
    user_id: user2.id
    })

photo60 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Trumer1.jpg')
review159.photo.attach(io: photo60, filename: 'Trumer1.jpg')


review160 = Review.create!({
    rating: 3.5,
    body: "It was good so I had another.",
    beer_id: beer41.id,
    user_id: user3.id
    })


review161 = Review.create!({
    rating: 3.3,
    body: "Sweetness paired with a slight bitterness, refreshing drinking experience.",
    beer_id: beer41.id,
    user_id: user1.id
    })


review161 = Review.create!({
    rating: 4.0,
    body: "Clean, and a little skunky in a good way.",
    beer_id: beer41.id,
    user_id: user5.id
    })


review162 = Review.create!({
    rating: 3.7,
    body: "A classic that never lets you down.",
    beer_id: beer41.id,
    user_id: user4.id
    })

review163 = Review.create!({
    rating: 4.9,
    body: "One of my absolute favorite beers. Hard to name anything I would improve. Firm cracker & bread backbone, full spice & fruit Belgian yeast, just a touch of flowery hops. So very drinkable. World class.",
    beer_id: beer42.id,
    user_id: user2.id
    })

photo61 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/TripelKarmeliet1.jpg')
review163.photo.attach(io: photo61, filename: 'TripelKarmeliet1.jpg')

review164 = Review.create!({
    rating: 4.3,
    body: "A classic. Always a good & tasty one.",
    beer_id: beer42.id,
    user_id: user3.id
    })

review165 = Review.create!({
    rating: 3.0,
    body: "Quality beer. Solid Belgian. Very well built. Great texture.",
    beer_id: beer42.id,
    user_id: user1.id
    })

photo62 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/TripelKarmeliet2.jpg')
review165.photo.attach(io: photo62, filename: 'TripelKarmeliet2.jpg')

review166 = Review.create!({
    rating: 3.0,
    body: "Disappointingly 'soft' and matching body compared to what memories I had of this beer.",
    beer_id: beer43.id,
    user_id: user5.id
    })

photo63 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Kwak1.jpg')
review166.photo.attach(io: photo63, filename: 'Kwak1.jpg')

review167 = Review.create!({
    rating: 4.5,
    body: "Probably my favorite of the more mainstream Belgian beers. Very smooth.",
    beer_id: beer43.id,
    user_id: user4.id
    })

review168 = Review.create!({
    rating: 4.25,
    body: "Doesn't cling to my gums like it used to, which is fine. It seems to have mellowed out.",
    beer_id: beer43.id,
    user_id: user2.id
    })

review169 = Review.create!({
    rating: 3.3,
    body: "Like Finnish sima (mead) with bubbles. Surprisingly I don't taste the alcohol much but can't really say that the taste is complex.",
    beer_id: beer44.id,
    user_id: user1.id
    })

photo64 = open('https://tappd-seeds.s3-us-west-1.amazonaws.com/ReviewPhotos/Deus1.jpg')
review169.photo.attach(io: photo64, filename: 'Deus1.jpg')

review170 = Review.create!({
    rating: 4.3,
    body: "More like a high-end cider crossed with champagne rather than a beer! Incredibly dry, fruity (apple) and quite floral.",
    beer_id: beer44.id,
    user_id: user5.id
    })

review171 = Review.create!({
    rating: 2.5,
    body: "Tastes like nail polish remover, funk, herby.",
    beer_id: beer44.id,
    user_id: user3.id
    })

review172 = Review.create!({
    rating: 4.5,
    body: "Is it wine? Is it beer? Who knows? It’s tasty though!",
    beer_id: beer44.id,
    user_id: user2.id
    })

review173 = Review.create!({
    rating: 4.3,
    body: "My mate reckons it tastes like a really good snakebite, I think it's like a really really fizzy Belgian beer.",
    beer_id: beer44.id,
    user_id: user4.id
    })








    
