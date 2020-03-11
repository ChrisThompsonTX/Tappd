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


# Users
demo_user = User.create!({
    username: "DemoUser",
    password: "password",
    email: "demo@demo.demo"
    })

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
beer2 = Beer.create!({
    name: "Death & Taxes",
    brewery_id: brewery1.id,
    style: "Lager - Dark",
    rating: 3.8,
    description: "A very dark yet surprisingly light-bodied Lager beer, crisp and refreshing with no heaviness.",
    abv: 5,
    ibu: 0
    })
beer3 = Beer.create!({
    name: "Seizon Bretta",
    brewery_id: brewery2.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.0,
    description: "A not so traditional Farmhouse saison or ‘seasonal’ style beer brewed to develop complex fruitiness and acidity. Brettanomyces yeast is added, which over time diminishes the malt and hop character and accentuates the dry, fruity & spicy characteristics.",
    abv: 8,
    ibu: 35
    })
beer4 = Beer.create!({
    name: "Peche 'n Brett",
    brewery_id: brewery2.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.4,
    description: "Our seasonal oak aged organic peach beer is brewed with local Oregon fruit. Peche 'n Brett is brewed and refermented with the peaches in our Seizoen Bretta. One and a half pound of peaches are added to each gallon of Bretta to produce a secondary fermentation resulting in complex peach aroma and flavor, hop balance and subtle malt character, followed up with brettanomyces and oak derived fruity dryness. Final refermentation with pear juice provides natural carbonation with added aromas and flavors in the bottle.",
    abv: 10,
    ibu: 0
    })
beer5 = Beer.create!({
    name: "STS Pils",
    brewery_id: brewery3.id,
    style: "Kellerbier / Zwickelbier",
    rating: 3.6,
    description: "STS Pils is a classic European style Pilsner. It is straw in color and often times will have a slight haze due to the fact that it is unfiltered. STS Pils is a hop forward pilsner with a mild malt foundation, strong lager yeast characteristic, and a dry, bitter finish.",
    abv: 5.3,
    ibu: 33
    })
beer6 = Beer.create!({
    name: "Blind Pig IPA",
    brewery_id: brewery3.id,
    style: "IPA - American",
    rating: 4.2,
    description: "Blind Pig IPA was originally brewed by Vinnie at Blind Pig Brewing Co. in Temecula CA. Inspired by the original Blind Pig IPA, this beer is loaded with hop character but only has 6.0% ABV.",
    abv: 6.1,
    ibu: 70
    })
beer7 = Beer.create!({
    name: "Supplication",
    brewery_id: brewery3.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Brown ale aged in Pinot Noir wine barrels for one year with sour cherries, Brettanomyces yeast, and Lactobacillus & Pedicoccus bacteria.",
    abv: 7.75,
    ibu: 10
    })
beer8 = Beer.create!({
    name: "Supplication",
    brewery_id: brewery3.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Brown ale aged in Pinot Noir wine barrels for one year with sour cherries, Brettanomyces yeast, and Lactobacillus & Pedicoccus bacteria.",
    abv: 7.75,
    ibu: 10
    })
beer9 = Beer.create!({
    name: "Pliny the Elder",
    brewery_id: brewery3.id,
    style: "IPA - Imperial / Double",
    rating: 4.5,
    description: "A true leader in the hop-wars of the west coast, Pliny the Elder hits you over the head with hoppy bitterness and manages to smooth the rough edges out enough to become an enjoyable brew.",
    abv: 8,
    ibu: 100
    })
beer10 = Beer.create!({
    name: "Beatification",
    brewery_id: brewery3.id,
    style: "American Wild Ale",
    rating: 4.4,
    description: "This beer is very unique and inspired by breweries in the Lambic region of Belgium and, especially, our friends at Cantillon. It is 100% spontaneously fermented, meaning yeast is not added. Once the beer is brewed, it is transferred to a cool-ship or “horny” tank located in our barrel room at the pub. There it sits overnight and collects whatever funky wild yeast and bacteria may be living in the room. The next day it is transferred to oak wine barrels where it ferments wildly and ages for a few months. The end result is a wild, spontaneously fermented, sour, and tasty hand-crafted beer!",
    abv: 6,
    ibu: 0
    })
beer11 = Beer.create!({
    name: "Consecration",
    brewery_id: brewery3.id,
    style: "Sour - Other",
    rating: 4.4,
    description: "Ale aged in Cabernet Sauvignon barrels with currants added",
    abv: 10,
    ibu: 0
    })
beer12 = Beer.create!({
    name: "Bony Fingers",
    brewery_id: brewery1.id,
    style: "Lager - Dark",
    rating: 3.9,
    description: "Roastier, bolder version of our iconic Death & Taxes. Higher ABV, fuller body and exactly what you want when the weather goes autumn.",
    abv: 6.2,
    ibu: 0
    })
beer13 = Beer.create!({
    name: "Leifer: 2017 Harvest",
    brewery_id: brewery4.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.5,
    description: "(Batch Date: 7/17) Leifer is an oak ripened country beer of mixed fermentation, rested upon over a hundred pounds of rhubarb grown by our neighbors, the Leifer family.",
    abv: 5.2,
    ibu: 0
    })
beer14 = Beer.create!({
    name: "Call To Mind",
    brewery_id: brewery4.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.4,
    description: "Call To Mind is a country beer brewed with subtle additions of chamomile, lemon thyme, and lemon balm - all sourced from our neighbors. Fermented with a mixed culture and briefly ripened in oak casks to yield a distinct and lively offering.",
    abv: 5.4,
    ibu: 0
    })
beer15 = Beer.create!({
    name: "Whistlin'",
    brewery_id: brewery4.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.3,
    description: "Whistlin' is a country beer brewed with fresh lemongrass grown by our neighbors. We ferment with a mixed culture and ripen it in oak casks, yielding a citrusy ale with a zesty and slightly spicy vibe.",
    abv: 5.6,
    ibu: 0
    })
beer16 = Beer.create!({
    name: "Palatine Pils",
    brewery_id: brewery4.id,
    style: "Pilsner - German",
    rating: 4.1,
    description: "Our cherished house pilsner",
    abv: 4.8,
    ibu: 0
    })
beer17 = Beer.create!({
    name: "Qualify Pils",
    brewery_id: brewery4.id,
    style: "Pilsner - German",
    rating: 4.1,
    description: "Hop accented German Pilsner",
    abv: 5.0,
    ibu: 0
    })
beer18 = Beer.create!({
    name: "Crispy Little",
    brewery_id: brewery4.id,
    style: "Wheat Beer - American Pale Wheat",
    rating: 4.0,
    description: "Pale ale brewed with wheat",
    abv: 4.6,
    ibu: 0
    })
beer19 = Beer.create!({
    name: "Homespun",
    brewery_id: brewery4.id,
    style: "Pale Ale - American",
    rating: 4.1,
    description: "Hoppy spelt ale. Brewed with a unique blend of modern/fruity Pacific Northwest hops, in conjunction with old-school German hops.",
    abv: 4.5,
    ibu: 0
    })
beer20 = Beer.create!({
    name: "Le Petit Prince",
    brewery_id: brewery5.id,
    style: "Table Beer",
    rating: 3.5,
    description: "Throughout Northern Europe, light-bodied, well-hopped, low alcohol table beers were often the beverage of choice with all meals at times and in places where the water wasn’t always safe to drink. Le Petit Prince is a dry, unspiced, highly attenuated Farmhouse Table Beer unique to our land in the Texas Hill Country. Naturally occurring wild yeasts impart a sense of place to this unfiltered, unpasteurized, 100% naturally conditioned ale.",
    abv: 2.9,
    ibu: 30
    })
beer21 = Beer.create!({
    name: "Das Wunderkind!",
    brewery_id: brewery5.id,
    style: "Farmhouse Ale - Saison",
    rating: 3.9,
    description: "Made using the once commonplace, Old World technique of bière de coupage, freshly hopped, young beer is blended with old, sour beer aged in oak barrels. Das Wunderkind! is dry, highly attenuated, unspiced, tart, floral, and funky. Unfiltered, unpasteurized, and 100% naturally conditioned.",
    abv: 4.5,
    ibu: 0
    })
beer22 = Beer.create!({
    name: "Funk Metal",
    brewery_id: brewery5.id,
    style: "Sour - Other",
    rating: 4.0,
    description: "Funk Metal is an 8.2% alcohol, unfiltered, unpasteurized, naturally conditioned imperial stout fermented with farmhouse yeast, aged for months in oak barrels with wild yeast and souring bacteria, and then hand-blended with other barrel-aged beer to round out the palate. The finished beer retains aromas of chocolate and roast but takes on a distinct vinous character and sour complexity from extended aging and fermentation in oak barrels.",
    abv: 8.2,
    ibu: 60
    })
beer23 = Beer.create!({
    name: "Atrial Rubicite",
    brewery_id: brewery5.id,
    style: "American Wild Ale",
    rating: 4.5,
    description: "Atrial Rubicite is made from well water, barley, wheat, hops, farmhouse, native yeast from the Texas Hill Country, souring bacteria and raspberries. It’s 5.8% alcohol by volume, has a finishing gravity of 1.005 and is 3.36 pH. It is unfiltered, unpasteurized and 100% bottle conditioned.",
    abv: 5.8,
    ibu: 0
    })
beer24 = Beer.create!({
    name: "Commercial Suicide",
    brewery_id: brewery5.id,
    style: "English Mild Ale",
    rating: 3.5,
    description: "English pub ale meets the French farmhouse tradition and American oak aging in this dry, drinkable farmhouse mild ale. Full-flavored, but brewed with enough restraint to be highly sessionable. Unfiltered, unpasteurized, and naturally conditioned.",
    abv: 3.5,
    ibu: 0
    })
beer25 = Beer.create!({
    name: "Moderne Dansk",
    brewery_id: brewery5.id,
    style: "American Wild Ale",
    rating: 4.4,
    description: "Wild ale aged in Danish cherry wine barrels refermented with Danish Stevnsbær cherry juice! Moderne Dansk was inspired by one of our favorite wineries in the world -- Frederiksdal Kirsebærvin in Harpelunde, Denmark. Frederiksdal specializes in making beautiful wines from Danish Stevnsbær cherries. We've been lucky to carry their wines in our tasting room and call them friends for several years. Their wines are a house-favorite here at Jester King. We are grateful to have procured oak barrels previously containing their wine, as well as juice from Stevnsbær cherries. We brewed beer with well water, local grain, and a blend of fresh and aged hops, and fermented it with our mixed culture of brewers yeast and native yeast and bacteria. We then aged the beer in cherry wine barrels for about a year before refermenting it with Stevnsbær cherry juice. It was then naturally refermented in bottles and kegs. We believe Moderne Dansk is a beautiful melding of the terroir from Frederiksdal and Jester King. We're excited for you to experience it!",
    abv: 7.1,
    ibu: 0
    })
beer26 = Beer.create!({
    name: "RU55",
    brewery_id: brewery5.id,
    style: "Sour - Flanders Red Ale",
    rating: 4.3,
    description: "Barrel-Aged Sour Red Ale Farmhouse red ale aged in oak barrels with wild yeast and souring bacteria. Unfiltered, unpasteurized, and 100% naturally conditioned. This beer is a tribute to our good friend and professional brewer Russ Beattie.",
    abv: 6.7,
    ibu: 0
    })
beer27 = Beer.create!({
    name: "Bière de Blanc du Bois",
    brewery_id: brewery5.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Bière de Blanc du Bois was brewed with Hill Country well water, barley, wheat, and hops. It was fermented with our unique mixed culture of microorganisms, which includes farmhouse yeasts, naturally occurring wild yeasts harvested from our air and land in the Texas Hill Country, and native souring bacteria. After extended fermentation and maturation in oak barrels, it was refermented with Texas-grown Blanc du Bois grapes. Bière de Blanc du Bois is 6.7% alcohol by volume, 3.2 pH, and has a finishing gravity of 1.004 (1.0 degree Plato). It is unfiltered, unpasteurized, and 100% naturally conditioned. The artwork for Bière de Blanc du Bois was created by our in-house artist Josh Cockrell.",
    abv: 6.7,
    ibu: 0
    })
beer28 = Beer.create!({
    name: "Curieux",
    brewery_id: brewery6.id,
    style: "Belgian Tripel",
    rating: 4.0,
    description: "First brewed back in 2004, Curieux was our initial foray into barrel aging. To make Curieux, we take our Tripel and let it age in bourbon barrels for six-to-eight weeks. Once that time is up, we take the beer out of our cold cellars and blend it back with a portion of fresh Tripel. The resulting rich, golden ale features smooth notes of coconut, vanilla, and a hint of bourbon.",
    abv: 10.4,
    ibu: 27
    })
beer29 = Beer.create!({
    name: "White",
    brewery_id: brewery6.id,
    style: "Witbier",
    rating: 3.8,
    description: "Allagash White features a refreshing balance of citrus and spice. Wheat, coriander, and Curaçao orange peel round out the flavor of this pale straw-colored, hazy beer.",
    abv: 5.2,
    ibu: 13
    })
beer30 = Beer.create!({
    name: "Mattina Rossa",
    brewery_id: brewery6.id,
    style: "Sour - Fruited",
    rating: 4.3,
    description: "Mattina Rossa has an aroma of fresh raspberry, strawberry preserves, and lemon rind and tastes of raspberry and pomegranate. The long finish starts with a tart citrus and ends with a pronounced biscuit flavor. We brew it with a mash of 2-Row malt and 440 pounds of local raspberries. Shortly after primary fermentation in stainless steel with our house yeast strain, the beer is aged in red wine barrels with a blend of Lactobacillus and Brettanomyces. After 18 months, fresh local raspberries are added to a portion of the barrels. The beer continues to age on the fruit for an additional six months, at which time the barrels are blended to strike the desired balance of fruit and funk and slight bitterness.",
    abv: 6.9,
    ibu: 0
    })
beer31 = Beer.create!({
    name: "Coolship Red",
    brewery_id: brewery6.id,
    style: "Lambic - Traditional",
    rating: 4.3,
    description: "This blend of spontaneously fermented beer is aged on local raspberries. We begin brewing Coolship Red with Pilsner malt, 40% raw wheat, and aged whole-leaf hops. The unfermented wort is then transferred to a large shallow pan called a coolship, which allows the hot wort to mingle with wild yeast and souring microbiota in the Maine air. After fermenting and aging in French oak wine barrels for over two years, we add raspberries and let it rest for an additional four to five months. The finished beer is bright red in color with an aroma of raspberry and oak. Its raspberry-forward flavor is balanced by notes of light funk, apricot, and a tart, dry finish.",
    abv: 6.7,
    ibu: 0
    })
beer32 = Beer.create!({
    name: "Farm To Face",
    brewery_id: brewery6.id,
    style: "American Wild Ale",
    rating: 4.3,
    description: "Drinking this medium-bodied beer is like biting into a juicy, yet tart, peach. Farm to Face is brewed as a pale ale and then fermented for ten months in stainless tanks with house yeast. After primary fermentation, Pediococcus, Lactobacillus, and a whole lot of peaches are added. Aromas of green apple and graham cracker accompany a lingering peachy finish.",
    abv: 6.3,
    ibu: 0
    })
beer33 = Beer.create!({
    name: "Pale Ale",
    brewery_id: brewery7.id,
    style: "Pale Ale - American",
    rating: 3.6,
    description: "Our most popular beer, Sierra Nevada Pale Ale is a delightful interpretation of a classic style. It has a deep amber color and an exceptionally full-bodied, complex character. Generous quantities of premium Cascade hops give the Pale Ale its fragrant bouquet and spicy flavor.",
    abv: 5.6,
    ibu: 38
    })
beer34 = Beer.create!({
    name: "Celebration Fresh Hop IPA",
    brewery_id: brewery7.id,
    style: "IPA - American",
    rating: 3.8,
    description: "The long, cold nights of winter are a little brighter with Celebration Ale. Wonderfully robust and rich, Celebration Ale is dry-hopped for a lively, intense aroma. Brewed especially for the holidays, it is perfect for a festive gathering or for a quiet evening at home.",
    abv: 6.8,
    ibu: 65
    })
beer35 = Beer.create!({
    name: "Narwhal Imperial Stout",
    brewery_id: brewery7.id,
    style: "Stout - American Imperial / Double",
    rating: 4.0,
    description: "Narwhal Imperial Stout is inspired by the mysterious creature that thrives in the deepest fathoms of the frigid Arctic Ocean. Featuring incredible depth of malt flavor, rich with notes of espresso, baker’s cocoa, roasted grain and a light hint of smoke, Narwhal is a massive malt-forward monster. Aggressive but refined with a velvety smooth body and decadent finish, Narwhal will age in the bottle for years to come.",
    abv: 10.2,
    ibu: 60
    })
beer36 = Beer.create!({
    name: "Ruthless",
    brewery_id: brewery7.id,
    style: "IPA - Rye",
    rating: 3.7,
    description: "Rye has been a staple grain for millennia—sought after for its stubborn resilience in the field and revered for its unique flavor. Ruthless Rye IPA is brewed with rustic grains for refined flavors, combining the peppery spice of rye and the bright citrusy flavors of whole-cone hops to create a complex ale for the tumultuous transition to spring.",
    abv: 6.6,
    ibu: 55
    })
beer37 = Beer.create!({
    name: "Saison Bernice",
    brewery_id: brewery8.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.4,
    description: "Saison Bernice is an exquisitely fermented farmhouse ale. Dry and refreshing, Bernice is made of the freshest on-hand and locally available ingredients. She receives multiple yeast additions, including Brettanomyces, and is further aged in the bottle.",
    abv: 6.5,
    ibu: 0
    })
beer38 = Beer.create!({
    name: "West Ashley",
    brewery_id: brewery8.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.5,
    description: "Orange, lactic, and bursting with apricot aroma, West Ashley is built for consideration and conversation. While Ashley starts as a simple Saison, careful aging in French Oak Pinot Noir barrels with apricots, our house microbes, and warm encouragement transform her into a tart, complex and delectable beer.",
    abv: 7.3,
    ibu: 0
    })
beer39 = Beer.create!({
    name: "Tomorrow, Today",
    brewery_id: brewery8.id,
    style: "IPA - American",
    rating: 4.2,
    description: "IPA with Simcoe, Citra, and Mosaic.",
    abv: 7.4,
    ibu: 30
    })
beer40 = Beer.create!({
    name: "Southern Sunrise",
    brewery_id: brewery8.id,
    style: "Farmhouse Ale - Saison",
    rating: 4.6,
    description: "Blended in collaboration with our longtime friends Beth and Craig Wathen, Southern Sunrise pays tribute to the Wathens and their 10 years of innovation in San Francisco. A barrel-aged saison at its core, the late addition of Georgia's favorite fruit lends a modest, yet juicy, peach finish to this smooth beer. We encourage you to share Southern Sunrise with good friends while you celebrate the sweetness of friendship and the love of beer. Sante!",
    abv: 7.6,
    ibu: 0
    })
beer41 = Beer.create!({
    name: "Trumer Pils",
    brewery_id: brewery9.id,
    style: "Pilsner - German",
    rating: 3.5,
    description: "The sparkling mouth feel of each sip confirms the dedication to traditional European craftsmanship. Every aspect of the brewing process of the family-owned Trumer Brauerei in Salzburg has been recreated with exacting detail at the Trumer Brauerei Berkeley. Trumer Pils is the wonderful result of a unique and special brewing process, which sets it apart from other beers. Like champagne, the quality of a great Pilsner can be seen in the density of its bubbles. Trumer Pils produces small, tight bubbles that rise from the bottom of the glass, delivering a slightly spicy aroma, with a hint of citrus. This perfect balance of flavors is achieved by procuring the exact blend of malt and hops from Germany and Austria and fermenting the brew with proprietary yeast. Its body is accentuated by using pure, soft water and removing the malt husk prior to the mashing process. The signature of Trumer Pils is its finish. The crisp, clean and well-rounded taste leaves just a subtle touch of soft bitter flavor on the back of the palate. However, because the husk is removed before mashing, the finish won’t linger. Trumer Pils is a testament to the dedication of its Austrian and American brewmasters. The result? A true European Pilsner without compare.",
    abv: 4.9,
    ibu: 26
    })
beer42 = Beer.create!({
    name: "Tripel Karmeliet",
    brewery_id: brewery10.id,
    style: "Belgian Tripel",
    rating: 4.0,
    description: "Tripel Karmeliet is still brewed to an authentic beer recipe from 1679 originating in the former Carmelite monastery in Dendermonde. Written over 300 years ago, this recipe describes the use of three kinds of grain: wheat, oats and barley. The name Tripel karmeliet thus refers both to its origin and its in-bottle refermentation. From many trial brews of multigrain tripels carried out at our brewery in the 90s, it appears that the particular historic combination of the 3 kinds of grain still remains the ideal blend.",
    abv: 8.4,
    ibu: 16
    })
beer43 = Beer.create!({
    name: "Pauwel Kwak",
    brewery_id: brewery10.id,
    style: "Belgian Tripel",
    rating: 4.0,
    description: "In Napoleon's time Pauwel Kwak was a brewer and the owner of the 'De Hoorn' inn in Dendermonde. Mail coaches stopped there every day. But at that time coachmen were not allowed to leave their coach and horses in order to have their thirst quenched along with their passengers. As a result, the inventive innkeeper had a special Kwak glass blown that could be hung on the coach. In this way the coachman had his Kwak beer safely at hand. LOOK: Kwak is recognisable by its deep bright amber colour and a dense, creamy coloured head. The pale wood of the glass holder makes a pleasant contrast with the beer. SMELL: You will smell a mellow, fruity and malty aroma with a slightly spicy character (coriander, hops). Additional earthy and very subtle aromas of banana and perhaps also a whiff of pineapple or mango in the background. TASTE: Discover a very mellow, fruity attack, a nougat-like solidity, and a slightly spicy character with hints of liquorice passing into a warm finish that reminds you of caramelised banana. The bitterness always remains in the background but in the end emerges delicately. ",
    abv: 8.4,
    ibu: 0
    })
beer44 = Beer.create!({
    name: "DeuS (Brut des Flandres)",
    brewery_id: brewery10.id,
    style: "Bière de Champagne / Bière Brut",
    rating: 3.9,
    description: "Refreshing as an aperitif. And just as full of flavour and rich in aroma as a beer from heaven. That's DeuS. A magnificent symbiosis of brewing a beer and creating a sparkling wine. Ideal for delighting your guests sometimes as an unusual choice with the before-dinner nibbles and amuse-geules. And perfect if you have got something to celebrate. DeuS - truly the sparkling divine based on barley. Drink cold!",
    abv: 11.5,
    ibu: 11
    })


# Reviews