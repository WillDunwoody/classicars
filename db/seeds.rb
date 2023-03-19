require 'open-uri'
p 'cleaning database'
User.delete_all
Vehicle.delete_all

will = User.create(email: "will@classicars.com", password: "1234567")
kurt = User.create(email: "kurt@classicars.com", password: "1234567")
leo = User.create(email: "leo@classicars.com", password: "1234567")
beyza = User.create(email: "beyza@classicars.com", password: "1234567")

p 'creating rolls'
rolls1 = URI.open("https://assets.dyler.com/uploads/cars/24971/925381/medium_classic-rolls-royce-corniche-2-convertible-cabriolet-roadster-1989-grey-for-sale.jpg")
rolls2 = URI.open("https://assets.dyler.com/uploads/cars/24971/925379/medium_classic-rolls-royce-corniche-2-convertible-cabriolet-roadster-1989-grey-for-sale.jpg")
rolls3 = URI.open("https://assets.dyler.com/uploads/cars/24971/925397/medium_classic-rolls-royce-corniche-2-convertible-cabriolet-roadster-1989-grey-for-sale.jpg")

rolls = Vehicle.new(v_make: "rolls", v_model: "Quattro", year: "1989", passengers: "5",
                    description: "The Rolls-Royce Corniche is a two-door, front-engine, rear wheel drive luxury car produced by Rolls-Royce Motors as a hardtop coupé (from 1971 to 1980) and as a convertible (from 1971 to 1995 and 1999 to 2002).\n
                    \nThe Corniche was a development of the Mulliner Park Ward two-door versions of the Rolls-Royce Silver Shadow. These were designated as the 2-door Saloon and Drophead Coupé,[1] introduced in 1965 and 1966 respectively. Production remained in London at Mulliner Park Ward; the new name was applied in March 1971.\n
                    \nA Bentley version of the Corniche was also produced. It became known as the Bentley Continental from 1984 to 1995.\n
                    \nThe Corniche draws its name from the experimental 1939 Corniche prototype. The name originally comes from the French word corniche, a coastal road, especially along the face of a cliff, most notably the Grande Corniche along the French Riviera above the principality of Monaco.",
                    city: "London", country: "England", address: "40 Vauxhall Bridge Road, London SW1V 2RX, United Kingdom", price: "107", vehicle_type: "car")
rolls.user = beyza
rolls.save
p 'adding photos'
rolls.photos.attach([{ io: rolls1, filename: "rolls1.png", content_type: "image/png" },
                     { io: rolls2, filename: "rolls2.png", content_type: "image/png" },
                     { io: rolls3, filename: "rolls3.png", content_type: "image/png" }])
p 'photos added'
rolls.save!
p 'rolls saved'

if rolls.latitude
  p "rolls address saved"
else
  p "rolls address not saved"
end

p '--------------------------'

p 'creating fiat'
fiat500photo1 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/11/1972_fiat_500_fiat-500-30-33553.jpeg?fit=940%2C627")
fiat500photo2 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/11/1972_fiat_500_fiat-500-23-33687.jpeg?w=620&resize=620%2C413")
fiat500photo3 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/11/1972_fiat_500_fiat-500-164-71912.jpg?w=620&resize=620%2C413")

fiat500 = Vehicle.new(v_make: "Fiat", v_model: "500", year: "1972", passengers: "4",
                      description: "In September 1968 Fiat put on sale the 500 L or Lusso (tipo 110 F/L), a more richly trimmed and better appointed version of the standard 500 F. The 500 L remained on sale until 1972, when the new Fiat 126 was introduced.\n
                      \nPerhaps the most obvious new feature of the 500 L were tubular guards protecting the front bumper and the corners of the rear one. As a result, the car was about 6 cm (2.4 in) longer than the 500 F at 3,025 mm (119 in). Other model-specific exterior items were a new Fiat badge at the front, redesigned hubcaps, chrome plastic mouldings covering the roof drip rails, and bright trim around windscreen and rear window.\n
                      \nInside the dashboard was entirely covered in black anti-glare plastic material instead of being bare painted metal, and was fitted with a new trapezoid instrument binnacle replacing the round one used on all other 500 models. The steering wheel was black plastic with metal spokes. The door cards—upholstered in the same pleated pattern leatherette used on the seats—carried redesigned and relocated door handles and new door pockets.\n
                      \nMore storage space was provided in the form of a tray on the centre tunnel, which like the rest of the floor was covered in carpet rather than rubber mats. Except for radial instead of bias ply tires, from a mechanical standpoint the 500 L was identical to the coeval 500 F.",
                      city: "Milan", country: "Italy", address: "Galleria Anna Castelli Ferrieri 2N24, 20145 Milan, Italy", price: "150", vehicle_type: "car")
fiat500.user = will

p 'adding photos'
fiat500.photos.attach([{ io: fiat500photo1, filename: "fiat500photo1.png", content_type: "image/png" },
                       { io: fiat500photo2, filename: "fiat500photo2.png", content_type: "image/png" },
                       { io: fiat500photo3, filename: "fiat500photo3.png", content_type: "image/png" }])
p 'photos added'
fiat500.save!
p 'fiat saved'

if fiat500.latitude
  p "fiat address saved"
else
  p "fiat address not saved"
end

p '--------------------------'

p 'creating countach'
countach1 = URI.open("https://www.classicdriver.com/cdn-cgi/image/format=auto,fit=cover,width=1920,height=1029/sites/default/files/users/31846/cars_images/feed_839897/7187bef8cb90706773eb0c21e4ccca8d.jpg")
countach2 = URI.open("https://www.classicdriver.com/sites/default/files/users/31846/cars_images/feed_839897/c9043ab589cebe1c28dce04fd2473f08.jpg")
countach3 = URI.open("https://www.classicdriver.com/sites/default/files/users/31846/cars_images/feed_839897/d4933b2c28ea936c67f5b4ddbbfb73b4.jpg")
countach = Vehicle.new(v_make: "Lamborghini", v_model: "Countach", year: "1974", passengers: "2",
                       description: "The Lamborghini Countach is a rear mid-engine, rear-wheel-drive sports car produced by the Italian = willobile manufacturer Lamborghini from 1974 until 1990. It is one of the many exotic designs developed by Italian design house Bertone.\n
                       \nThe Countach name originated in late 1970 or 1971, near the beginning of the LP112 project.[9][10] Most previous and subsequent Lamborghini car names are associated with famous bulls and bullfighting, but the Countach broke with this tradition. The name originated from the word contacc, an exclamation of astonishment in the Piedmontese language.\n
                       \nThe Countach was styled by Marcello Gandini of the Bertone design studio.[9][14] His design for the Countach's predecessor, the Miura, achieved commercial success and critical acclaim from the automotive press when it was introduced in March 1966.[10] Following the Miura's debut, Gandini began experimenting with a new, more angular and geometric design language in a series of concept cars for Lamborghini, Alfa Romeo and Lancia. In particular, the 1968 Alfa Romeo Carabo and 1970 Lancia Stratos Zero were direct styling precursors to the Countach.[9] Like the Countach, they were both entirely wedge-shaped, mid-engine designs with a low, flat front, truncated tail and angular details. Both of these concept cars featured unconventional methods of entry into the passenger compartment—a hinged windshield for the Stratos Zero and scissor doors for the Carabo—foreshadowing the scissor doors used on the Countach.",
                       city: "Milan", country: "Italy", address: "Via Coni Zugna 44, 20144 Milan, Italy", price: "180", vehicle_type: "car")
countach.user = will
countach.save
p 'adding photos'
countach.photos.attach([{ io: countach1, filename: "countach1.png", content_type: "image/png" },
                        { io: countach2, filename: "countach2.png", content_type: "image/png" },
                        { io: countach3, filename: "countach3.png", content_type: "image/png" }])
p 'photos added'
countach.save!
p 'countach saved'

if countach.latitude
  p "countach address saved"
else
  p "countach address not saved"
end

p '--------------------------'

p 'creating diablo'
diablo1 = URI.open("https://image.hmn.com/lSjbcCfu0uZygu-5eTM3bDbqz4g=/820x545/uimage/97835330.jpg")
diablo2 = URI.open("https://image.hmn.com/fMPIeT5GJJboUqAfTPV0a9LOmZE=/900x0/uimage/97835347.jpg")
diablo3 = URI.open("https://image.hmn.com/v9BT-Oh9RcpLRGvMcwx0fHzeQpI=/900x0/uimage/97835335.jpg")
diablo = Vehicle.new(v_make: "Lamborghini", v_model: "Diablo", year: "1998", passengers: "2",
                     description: "The Diablo was presented to the public for sale on 21 January 1990. Its power came from a 5.7 L (348 cu in) dual overhead cam, 4 valves per cylinder version of the existing V12 engine and computer-controlled multi-point fuel injection, producing a maximum output of 492 PS (362 kW; 485 hp) and 580 N⋅m (428 lbf⋅ft) of torque to reach a top speed of 325 km/h (202 mph). The Diablo was rear-wheel drive and the engine was mid-mounted to aid its weight balance.\n
                     \nAuto Motor und Sport measured 0-100 km/h (62 mph) in 4.5 seconds, 0-160 km/h (99 mph) in 9.3 seconds and 0-200 km/h (124 mph) in 13.7 seconds.\n
                     \nThe Diablo came better equipped than the Countach; standard features included fully adjustable seats and steering wheel, electric windows, an Alpine stereo system, and power steering from 1993 onwards. Anti-lock brakes were not initially available, although they would eventually be used. A few options were available, including a custom-molded driver's seat, remote CD changer and subwoofer, rear spoiler, factory fitted luggage set (priced at $2,600) and an exclusive Breguet clock for the dash (priced at $10,500).",
                     city: "Milan", country: "Italy", address: "Via Elia Lombardini 8, 20143 Milan, Italy", price: "240", vehicle_type: "car")
diablo.user = will
diablo.save
p 'adding photos'
diablo.photos.attach([{ io: diablo1, filename: "diablo1.png", content_type: "image/png" },
                      { io: diablo2, filename: "diablo2.png", content_type: "image/png" },
                      { io: diablo3, filename: "diablo3.png", content_type: "image/png" }])
p 'photos added'
diablo.save!
p 'diablo saved'

if diablo.latitude
  p "diablo address saved"
else
  p "diablo address not saved"
end

p '--------------------------'

p 'creating beetle'
beetle1 = URI.open("https://www.hireaclassiccar.com/wp-content/uploads/2017/04/vw-beetle-1.jpg")
beetle2 = URI.open("https://www.hireaclassiccar.com/wp-content/uploads/2017/04/vw-beetle-2.jpg")
beetle3 = URI.open("https://www.hireaclassiccar.com/wp-content/uploads/2017/07/Edit-5702.jpg")

beetle = Vehicle.new(v_make: "Volkswagen", v_model: "Beetle", year: "1964", passengers: "2",
                     description: "Herbie the Love Bug is a sentient anthropomorphic 1963 Volkswagen Beetle, a character that is featured in several Walt Disney motion pictures starting with the 1968 feature film The Love Bug. He has a mind of his own and is capable of driving himself, and is also a serious contender in auto racing competitions.\n
                     \nThroughout most of the franchise, Herbie is distinguished by red, white and blue racing stripes from front to back bumper, a racing-style number 53 on the front luggage compartment lid, doors, and engine lid, and a yellow-on-black ’63 California license plate with the registration OFP 857.\n
                     \nThe Volkswagen Beetle – officially the Volkswagen Type 1, informally in Germany the Käfer (German, “beetle”) and in parts of the English-speaking world the Bug – is a two-door, four passenger, rear-engine economy car manufactured and marketed by German autov_maker Volkswagen (VW) from 1938 until 2003.",
                     city: "Berlin", country: "Germany", address: "Kapweg 1, 13405 Berlin, Germany", price: "75", vehicle_type: "car")
beetle.user = kurt
beetle.save
p 'adding photos'
beetle.photos.attach([{ io: beetle1, filename: "beetle1.png", content_type: "image/png" },
                      { io: beetle2, filename: "beetle2.png", content_type: "image/png" },
                      { io: beetle3, filename: "beetle3.png", content_type: "image/png" }])
p 'photos added'
beetle.save!
p 'beetle saved'

if beetle.latitude
  p "beetle address saved"
else
  p "beetle address not saved"
end

p '--------------------------'

p 'creating sl300'
sl3001 = URI.open("https://image.hmn.com/HFLzLsSiFs6FXgVhlDzGa559xWo=/820x545/uimage/90728534.jpg")
sl3002 = URI.open("https://image.hmn.com/NuC7iEpyWe1OYuefbJ0i_5Rgl8A=/900x0/uimage/90728537.jpg")
sl3003 = URI.open("https://image.hmn.com/oDXe7MwZ2ytJHSFdy3b73_K74BQ=/900x0/uimage/90728556.jpg")

sl300 = Vehicle.new(v_make: "Mercedes", v_model: "sl 300", year: "1951", passengers: "2",
                    description: "The Mercedes-Benz 300 SL (chassis code W 198) is a two-seat sports car which was produced by Mercedes-Benz as a gullwinged coupe (1954-1957) and roadster (1957-1963). It was based on the company's 1952 racer, the W194, with mechanical direct fuel injection which boosted power almost 50 percent in its three-liter overhead camshaft straight-six engine.[3] Capable of reaching a top speed of up to 263 km/h (163 mph), it was a sports car racing champion and the fastest production car of its time.\n
                    \nMax Hoffman, Mercedes-Benz's United States importer at the time, inspired the 300 SL and saw an American market for such a car. The company introduced the 300 SL in February 1954 at the International Motor Sports Show in New York City (instead of Europe) to get it into US buyers' hands sooner.\n
                    \nSL is the short form for 'super-light' in German (super-leicht)[5] - Mercedes' first use of the designation, referring to the car's racing-bred light tubular-frame construction. The 300 SL was voted the 'sports car of the century' in 1999.",
                    city: "Berlin", country: "Germany", address: "Tempelhofer Ufer 9, 10963 Berlin, Germany", price: "92", vehicle_type: "car")
sl300.user = kurt
sl300.save
p 'adding photos'
sl300.photos.attach([{ io: sl3001, filename: "sl3001.png", content_type: "image/png" },
                     { io: sl3002, filename: "sl3002.png", content_type: "image/png" },
                     { io: sl3003, filename: "sl3003.png", content_type: "image/png" }])
p 'photos added'
sl300.save!
p 'sl300 saved'

if sl300.latitude
  p "sl300 address saved"
else
  p "sl300 address not saved"
end

p '--------------------------'

p 'creating delorean'
delorean1 = URI.open("https://www.startmotori.it/FILE/FOTO/1920x1080/delorean-dmc-12-the-car-whose-founder-has-a-movie-on-netflix-can-be-yours_16_1873279271211673258010.jpg")
delorean2 = URI.open("https://www.startmotori.it/FILE/FOTO/1920x1080/delorean-dmc-12-the-car-whose-founder-has-a-movie-on-netflix-can-be-yours_2_357921888881673258011.jpg")
delorean3 = URI.open("https://www.startmotori.it/FILE/FOTO/1920x1080/delorean-dmc-12-the-car-whose-founder-has-a-movie-on-netflix-can-be-yours_3_774569953661673258011.jpg")

delorean = Vehicle.new(v_make: "Delorean", v_model: "dmc 12", year: "1982", passengers: "2",
                       description: "The DMC DeLorean is a rear-engine two-passenger sports car manufactured and marketed by John DeLorean's DeLorean Motor Company (DMC) for the American market from 1981 until 1983—ultimately the only car brought to market by the fledgling company. The DeLorean is sometimes referred to by its internal DMC pre-production designation, DMC-12. However, the DMC-12 name was never used in sales or marketing materials for the production model.\n
                       \nDesigned by Giorgetto Giugiaro and noted for its gull-wing doors and brushed stainless-steel outer body panels, the sports car was also noted for a lack of power and performance incongruous with its looks and price. Though its production was short-lived, the DeLorean became widely known after it was featured as the time machine in the Back to the Future films.\n
                       \nWith the first production car completed on January 21, 1981, the design incorporated numerous minor revisions to the hood, wheels and interior before production ended in late December 1982, shortly after DMC filed for bankruptcy and after total production reached about 9,000 units.\n
                       \nDespite the car having a reputation for poor build quality and an unsatisfactory driving experience, the DeLorean continues to have a strong following driven in part by the popularity of Back to the Future. 6,500 DeLoreans were estimated to still be on the road as of 2015.",
                       city: "London", country: "England", address: "400 Oxford Street, London W1A 1AB, United Kingdom", price: "87", vehicle_type: "car")
delorean.user = beyza
delorean.save
p 'adding photos'
delorean.photos.attach([{ io: delorean1, filename: "delorean1.png", content_type: "image/png" },
                        { io: delorean2, filename: "delorean2.png", content_type: "image/png" },
                        { io: delorean3, filename: "delorean3.png", content_type: "image/png" }])
p 'photos added'
delorean.save!
p 'delorean saved'

if delorean.latitude
  p "delorean address saved"
else
  p "delorean address not saved"
end

p '--------------------------'

p 'creating audi'
audi1 = URI.open("https://images.pistonheads.com/nimg/45264/Quattro_01.jpg")
audi2 = URI.open("https://images.pistonheads.com/nimg/45264/Quattro_04.jpg")
audi3 = URI.open("https://images.pistonheads.com/nimg/45264/Quattro_02.jpg")

audi = Vehicle.new(v_make: "Audi", v_model: "Quattro", year: "1984", passengers: "2",
                   description: "If you've not seen it already, set aside an hour and a half to watch the Michele Mouton documentary 'Queen of Speed' on Now TV. It's free to watch (just don't forget to cancel the trial) and a brilliant bit of filmmaking. Mouton's achievements in rallying only become more remarkable with each passing year; she remains the only woman to have ever won a round of the WRC. In fact, her last victory was Brazil 40 years ago this year. Without a top-level female driver in this year's championship, it's a record that will stand for another season. And really shouldn't.\n
                   \nBesides documenting a great story, Queen of Speed features some fantastic footage of her old rally cars, including an Alpine A110, a Fiat 131, and Porsche 911. But, of course, Mouton is best known for her relationship with Audi, the team she drove for from 1980 to 1985. And, well, you'll know all about the car...\n
                   \nOnce you've watched Queen of Speed it's going to be hard to resist gawping at Quattros, so consider this the legwork done for you. Even the pre-Group B footage is absorbing (Mouton taking her first win at San Remo in 1981), the big Audi unlike any other competitor to look at and listen to - but the pace was undeniable. Even then, the gamble taken by Audi on four-wheel drive was paying off, and what would the manufacturer be without the Quattro?",
                   city: "Berlin", country: "Germany", address: "Alt-Moabit 96, 10559 Berlin, Germany", price: "121", vehicle_type: "car")
audi.user = kurt
audi.save
p 'adding photos'
audi.photos.attach([{ io: audi1, filename: "audi1.png", content_type: "image/png" },
                    { io: audi2, filename: "audi2.png", content_type: "image/png" },
                    { io: audi3, filename: "audi3.png", content_type: "image/png" }])
p 'photos added'
audi.save!
p 'audi saved'

if audi.latitude
  p "audi address saved"
else
  p "audi address not saved"
end

p '--------------------------'

p 'creating testarossa'
testarossa1 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/10/1987_ferrari_testarossa_1987_ferrari_testarossa_a8140c3a-15aa-4523-b20c-6df58600ca77-okcdmp-38127-04981.jpg?fit=940%2C627")
testarossa2 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/10/1987_ferrari_testarossa_1987_ferrari_testarossa_dde7af81-81e8-4a53-a02b-60083eafa9e4-ltqcqr-38304-05027.jpg?w=620&resize=620%2C413")
testarossa3 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/10/1987_ferrari_testarossa_1987_ferrari_testarossa_8333d0a6-105f-4309-a1f9-77aa70bdbac5-tzw5gQ-39577-39578-scaled.jpg?w=620&resize=620%2C413")

testarossa = Vehicle.new(v_make: "Ferrari", v_model: "Testarossa", year: "1984", passengers: "2",
                         description: "The Ferrari Testarossa (Type F110) is a 12-cylinder mid-engine sports car manufactured by Ferrari, which went into production in 1984 as the successor to the Ferrari Berlinetta Boxer.\n
                         \nThe Pininfarina-designed car was originally produced from 1984 until 1991, with two model revisions following the end of Testarossa production called the 512 TR and F512 M, which were produced from 1992 until 1996. Including revised variations, almost 10,000 cars in total were produced, making it at the time one of the most mass-produced Ferrari models.\n
                         \nThe Testarossa is a two-door coupé that premiered at the 1984 Paris Auto Show.[3] All versions of the Testarossa were available with a rear-mounted, five-speed manual transmission. The rear mid-engine design (engine between the axles but behind the cabin) keeps the centre of gravity in the middle of the car, which increases stability and improves the car's cornering ability, and thus results in a standing weight distribution of 40% front: 60% rear.",
                         city: "Milan", country: "Italy", address: "Via Gaetano de Castillia, 28, 20124 Milan, Italy", price: "270", vehicle_type: "car")
testarossa.user = will

p 'adding photos'
testarossa.photos.attach([{ io: testarossa1, filename: "testarossa1.png", content_type: "image/png" },
                          { io: testarossa2, filename: "testarossa2.png", content_type: "image/png" },
                          { io: testarossa3, filename: "testarossa3.png", content_type: "image/png" }])
p 'photos added'
testarossa.save!
p 'testarossa saved'

if testarossa.latitude
  p "testarossa address saved"
else
  p "testarossa address not saved"
end

p '--------------------------'

p 'creating mini'
mini1 = URI.open("https://www.tradeclassics.com/wp-content/uploads/2021/02/1969-Mini-Cooper-S-Green-Exterior-40.jpg")
mini2 = URI.open("https://www.tradeclassics.com/wp-content/uploads/2021/02/1969-Mini-Cooper-S-Green-Exterior-5.jpg")
mini3 = URI.open("https://www.tradeclassics.com/wp-content/uploads/2021/02/1969-Mini-Cooper-S-Green-Interior-2.jpg")

mini = Vehicle.new(v_make: "Mini", v_model: "Cooper mk2", year: "1984", passengers: "2",
                   description: "The classic Mini Cooper S requires little introduction. Celebrated for its engineering, handsome looks and go kart- like handling, anyone who has owned or even driven one still keeps that memory close to their hearts.\n
                   \nThe original 1961 incarnation was a modest car, taking the standard 848cc engine and modifying it to create the initial Cooper engine, the 997cc. With twin SU carbs it turned out 55bhp, up 21bhp on the 848cc. Along with its miniature size, close-ratio gearbox and disc brakes on the front wheels, it embarrassed far more powerful cars..\n
                   \nA higher-revving 998cc Cooper engine arrived in 1964, shortly after the introduction of the high-performance Cooper 1071S.\n
                   \nTwo new Cooper S models were introduced in 1964. Aimed at motorsport classes. The 1275cc model lasted until the entire range was ditched in 1971.",
                   city: "London", country: "England", address: "204 Lavender Hill, London SW11 1JG, United Kingdom", price: "121", vehicle_type: "car")
mini.user = beyza
mini.save
p 'adding photos'
mini.photos.attach([{ io: mini1, filename: "mini1.png", content_type: "image/png" },
                    { io: mini2, filename: "mini2.png", content_type: "image/png" },
                    { io: mini3, filename: "mini3.png", content_type: "image/png" }])
p 'photos added'
mini.save!
p 'mini saved'

if mini.latitude
  p "mini address saved"
else
  p "mini address not saved"
end
p '--------------------------'

p 'creating jaguar'
jaguar1 = URI.open("https://pendine.com/wp-content/uploads/2017/11/171103_SF0149-web-1030x687.jpg")
jaguar2 = URI.open("https://pendine.com/wp-content/uploads/2017/11/171103_SF0154-web-1030x687.jpg")
jaguar3 = URI.open("https://pendine.com/wp-content/uploads/2017/11/171103_SF0222-web-1030x687.jpg")

jaguar = Vehicle.new(v_make: "Jaguar", v_model: "E-Type", year: "1961", passengers: "2",
                     description: "The Jaguar E-Type, or the Jaguar XK-E for the North American market, is a British sports car that was manufactured by Jaguar Cars Ltd between 1961 and 1974. Its combination of beauty, high performance, and competitive pricing established the model as an icon of the motoring world. The E-Type's claimed 150 mph (241 km/h) top speed, sub-7-second 0 to 60 mph (97 km/h) acceleration, unitary construction, disc brakes, rack-and-pinion steering, and independent front and rear suspension distinguished the car and spurred industry-wide changes.\n
                     \nThe E-Type was based on Jaguar's D-Type racing car, which had won the 24 Hours of Le Mans for three consecutive years beginning in 1955.\n
                     \nThe E-Type employed what was, for the early 1960s, a novel design principle, with a front subframe carrying the engine, front suspension and front bodywork bolted directly to the body tub. No ladder frame chassis, as was common at the time, was needed and as such the first cars weighed only 1315 kg (2900 lb).\n
                     \nIt is rumored that, on its debut on 15 March 1961, Enzo Ferrari called it 'the most beautiful car ever made', but this statement is not fully confirmed. In 2004, Sports Car International magazine placed the E-Type at number one on their list of Top Sports Cars of the 1960s. In March 2008, the Jaguar E-Type ranked first in The Daily Telegraph online list of the world's '100 most beautiful cars' of all time. Outside automotive circles, the E-type has featured in the Diabolik comic series, Austin Powers films and the television series Mad Men.",
                     city: "London", country: "England", address: "181 Piccadilly, St. James's, London W1A 1ER, United Kingdom", price: "220", vehicle_type: "car")
jaguar.user = beyza
jaguar.save
p 'adding photos'
jaguar.photos.attach([{ io: jaguar1, filename: "jaguar1.png", content_type: "image/png" },
                      { io: jaguar2, filename: "jaguar2.png", content_type: "image/png" },
                      { io: jaguar3, filename: "jaguar3.png", content_type: "image/png" }])
p 'photos added'
jaguar.save!
p 'jaguar saved'

if jaguar.latitude
  p "jaguar address saved"
else
  p "jaguar address not saved"
end

p '--------------------------'

p 'creating westfalia'
westfalia1 = URI.open("https://silodrome.com/wp-content/uploads/2021/05/Volkswagen-Type-2-Westfalia-Camper-17-2048x1365.jpg")
westfalia2 = URI.open("https://silodrome.com/wp-content/uploads/2021/05/Volkswagen-Type-2-Westfalia-Camper-19-2048x1365.jpg")
westfalia3 = URI.open("https://silodrome.com/wp-content/uploads/2021/05/Volkswagen-Type-2-Westfalia-Camper-7-2048x1365.jpg")

westfalia = Vehicle.new(v_make: "Volkswagen", v_model: "Westfalia", year: "1958", passengers: "6",
                        description: "Starting in 1951 Westfalia began modifying VW vans, turning them into little cabins on wheels with beds, curtains, seats, tables, sometimes even including ice boxes, and sinks with running water. The Type 2 itself had only been released in 1949 for the first time, hot on the heels of the Volkswagen Beetle with which it shares many components.\n
                        \nFrom its initial release the Type 2 was reasonably affordable and it was cheap to run, this led to it becoming a best seller in Europe and it proved equally popular in other markets around the world. Aftermarket products for the Type 2 quickly became available, the most significant of which was the full camper conversion by Westfalia or by one of their competitors - companies like Dormobile, EZ Camper, ASI/Riviera, Holdsworth, and any number of others.\n
                        \nThese “camper vans” as they became known sold in significant numbers and became an annual summer holiday tradition for countless thousands of owners.",
                        city: "Berlin", country: "Germany", address: "Prenzlauer Allee 80, 10405 Berlin, Germany", price: "120", vehicle_type: "car")
westfalia.user = kurt
westfalia.save
p 'adding photos'
westfalia.photos.attach([{ io: westfalia1, filename: "westfalia1.png", content_type: "image/png" },
                         { io: westfalia2, filename: "westfalia2.png", content_type: "image/png" },
                         { io: westfalia3, filename: "westfalia3.png", content_type: "image/png" }])
p 'photos added'
westfalia.save!
p 'westfalia saved'

if westfalia.latitude
  p "westfalia address saved"
else
  p "westfalia address not saved"
end

p '--------------------------'

p 'creating porsche'
porsche1 = URI.open("https://classicmotorhub.com/wp-content/uploads/1987-Porsche-911-930-Turbo-MAIN-2.jpg")
porsche2 = URI.open("https://classicmotorhub.com/wp-content/uploads/1987-Porsche-911-930-Turbo-MAIN-6.jpg")
porsche3 = URI.open("https://classicmotorhub.com/wp-content/uploads/1987-Porsche-911-930-Turbo-INT-1.jpg")

porsche = Vehicle.new(v_make: "Porsche", v_model: "911", year: "1989", passengers: "2",
                      description: "“Turbo” may only signify the top trim level on some of today's electric Porsche cars, but nearly 50 years ago, that word branded the boosted car that cemented the 911 into legend. The 930, aka 911 Turbo, was this rear-engine sports car's most powerful and thrilling variant, a racing 935-derived model that earned a reputation for fierce performance. Until the advent of the twin-turbocharged 959 supercar of the mid-1980s, the 911 Turbo was the über-Porsche, and it remains highly respected and sought today.\n
                      \n“930” was the internal chassis code for the model initially dubbed the Turbo Carrera; the prototype 911 Turbo made its public debut at the 1974 Paris Motor Show, with production beginning in 1975. Up to that point, the hottest 911 roadgoing variant sold Stateside had been the 210-hp 2.7-liter 911S, but the 3.0-liter Turbo Carrera introduced here for 1976 could blow that into the weeds. Mated exclusively to a wide-ratio 4-speed manual transmission (Porsche's contemporary 5-speed and Sportomatic weren't strong enough), the Bosch K-Jetronic fuel-injected, air-cooled flat-six under the obligatory “whale tail” or “tea tray” rear deck spoiler used a single KKK turbo to made 234-hp and 245-lb.ft. of torque.\n
                      \nIt put that grunt to the ground through fat rear tires housed in massively flared fenders bearing black stone guard film that covered a track nearly 6-inches wider than the standard 911's, sprinting to 60 in less than 5 seconds and topping out at 156 mph, breathtaking figures at the time. Buyers willing to spend nearly $26,000 for a Turbo Carrera, when a base 911 cost less than $14,000, got a well-trimmed cabin for their investment. Leather upholstery, A/C, and power windows were standard here- in fact, a power sunroof was the only option. Just two years into production, the 930 was simply renamed 911 Turbo and got a shove in the form of an air-to-air intercooled 3.3-liter engine making 253 hp and 282-lb.ft. of torque, both figures eclipsing those of the V-8 in the new 928. Cross-drilled disc brakes behind forged Fuchs alloy wheels were derived from the 917 racer's.",
                      city: "Berlin", country: "Germany", address: "Schiffbauerdamm 12, 10117 Berlin, Germany", price: "156", vehicle_type: "car")
porsche.user = kurt
porsche.save
p 'adding photos'
porsche.photos.attach([{ io: porsche1, filename: "porsche1.png", content_type: "image/png" },
                       { io: porsche2, filename: "porsche2.png", content_type: "image/png" },
                       { io: porsche3, filename: "porsche3.png", content_type: "image/png" }])
p 'photos added'
porsche.save!
p 'porsche saved'

if porsche.latitude
  p "porsche address saved"
else
  p "porsche address not saved"
end

p '--------------------------'

p 'creating mclaren'
mclaren1 = URI.open("https://www.supercars.net/blog/wp-content/uploads/2021/03/mclaren_f1_for_sale_4.jpg")
mclaren2 = URI.open("https://www.supercars.net/blog/wp-content/uploads/2021/03/mclaren_f1_for_sale_3.jpg")
mclaren3 = URI.open("https://www.supercars.net/blog/wp-content/uploads/2021/03/mclaren_f1_for_sale_7.jpg")

mclaren = Vehicle.new(v_make: "McLaren", v_model: "F1", year: "1992", passengers: "3",
                      description: "The McLaren F1 is a sports car designed and manufactured by British automobile manufacturer McLaren Cars, and powered by the BMW S70/2 V12 engine. The original concept was conceived by Gordon Murray.\n
                      \nMurray was able to convince Ron Dennis to back the project. He hired Peter Stevens to design the exterior and interior of the car. On 31 March 1998, the XP5 prototype with a modified rev limiter set the Guinness World Record for the world's fastest production car, reaching 240.1 mph (386.4 km/h),[5] surpassing the modified Jaguar XJ220's 217.1 mph (349 km/h) record from 1993.\n
                      \nThe car features numerous proprietary designs and technologies; it is lighter and has a more streamlined structure than many modern sports cars, despite having one seat more than most similar sports cars, with the driver's seat located in the centre (and slightly forward) of two passengers' seating positions, providing driver visibility superior to that of a conventional seating layout.",
                      city: "London", country: "England", address: "341 Wandsworth Road, London SW8 2JH, United Kingdom", price: "250", vehicle_type: "car")
mclaren.user = beyza
mclaren.save
p 'adding photos'
mclaren.photos.attach([{ io: mclaren1, filename: "mclaren1.png", content_type: "image/png" },
                   { io: mclaren2, filename: "mclaren2.png", content_type: "image/png" },
                   { io: mclaren3, filename: "mclaren3.png", content_type: "image/png" }])
p 'photos added'
mclaren.save!
p 'mclaren saved'

if mclaren.latitude
  p "mclaren address saved"
else
  p "mclaren address not saved"
end

p '--------------------------'

p 'creating f40'
f401 = URI.open("https://www.supercars.net/blog/wp-content/uploads/2019/04/Ferrari-F40-Prototype-06.jpg")
f402 = URI.open("https://www.supercars.net/blog/wp-content/uploads/2017/08/ferrari_f40_5-2048x1366.jpeg")
f403 = URI.open("https://www.supercars.net/blog/wp-content/uploads/2017/08/f40-exhaust.jpg")

f40 = Vehicle.new(v_make: "Ferrari", v_model: "F40", year: "1987", passengers: "2",
                  description: "To celebrate 40 years of Ferrari, Enzo had his design team create a supercar that translated racing car technology to the road. Furthermore, it was built with only the most essential systems and in many regards is a supercar with functional simplicity.\n
                  \nIt was also the last car developed and built under Enzo Ferrari's direct supervision before he died. Following the turbocharged successes in Formula One, the 288 GTO was Ferrari's first road-going turbocharged model in 1984. The F40 followed in its path and shared its longitudinal, mid-mounted, twin turbocharged V8 configuration. Power came from a large V8 engine that produced 478 bhp and 426 lb-ft torque.\n
                  \nIncorporating advanced composite materials, the F40 was very light. It used a Kevlar for the body which was integrated into a steel chassis. This body/chassis unit was fabricated by Scaglietti and finished at Ferrari’s own factory. The F40 shape was developed by Pininfarina to reduce frontal area, drag and lift. They also designed a lexan hood to reveal the twin-turbo V8 engine.",
                  city: "Milan", country: "Italy", address: "Via Lodovico Muratori 10, 20135 Milan, Italy", price: "196", vehicle_type: "car")
f40.user = will

p 'adding photos'
f40.photos.attach([{ io: f401, filename: "f401.png", content_type: "image/png" },
                   { io: f402, filename: "f402.png", content_type: "image/png" },
                   { io: f403, filename: "f403.png", content_type: "image/png" }])
p 'photos added'
f40.save!
p 'f40 saved'

if f40.latitude
  p "f40 address saved"
else
  p "f40 address not saved"
end

# p '--------------------------'

# p 'creating f40'
# f401 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/11/1972_fiat_500_fiat-500-30-33553.jpeg?fit=940%2C627")
# f402 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/11/1972_fiat_500_fiat-500-23-33687.jpeg?w=620&resize=620%2C413")
# f403 = URI.open("https://bringatrailer.com/wp-content/uploads/2022/11/1972_fiat_500_fiat-500-164-71912.jpg?w=620&resize=620%2C413")

# new10 = Vehicle.new(v_make: "Mini", model: "Cooper mk II", year: "1968", passengers: "2",
#   description: "This 1968 Austin Mini Cooper S is a modified left-hand drive Mk II that was refurbished 500 kilometers ago in late 2016..",
#   city:"Belfast", country:"Northern Ireland", price:"60", vehicle_type: "car")
# new10.user = will
# new10.save
# p 'adding photos'
# f40.photos.attach([{ io: f401, filename: "f401.png", content_type: "image/png" },
#   { io: f402, filename: "f402.png", content_type: "image/png" },
#   { io: f403, filename: "f403.png", content_type: "image/png" }])
# p 'photos added'
# f40.save!
# p 'f40 saved'

# if f40.latitude
#   p "f40 address saved"
# else
#   p "f40 address not saved"
# end

# # chevphoto1 = URI.open("https://assets.carandclassic.com/listing-assets/chevrolet/corvette-c3/1969-chevrolet-corvette-c3-nARNA4/uphxoka0BaODvldZImtjVBIa8l4laTRRNg4cKv1y.jpg?auto=compress&ixlib=php-4.1.0&s=da9b85b29de7b2029882a27c6cf24e95")
# # chevphoto2 = URI.open("https://assets.carandclassic.com/listing-assets/chevrolet/corvette-c3/1969-chevrolet-corvette-c3-nARNA4/CawDHaNklCvSazxtR9szSDxpvm342agqIUO7R5Kn.jpg?ar=16%3A9&auto=compress&fit=crop&h=450&ixlib=php-4.1.0&q=75&w=800&s=bbe7a4f9197cb293bf4f80a81db5f169")
# # chevphoto3 = URI.open("https://assets.carandclassic.com/listing-assets/chevrolet/corvette-c3/1969-chevrolet-corvette-c3-nARNA4/HQzGUA9v8wQGqZX62c3iLI1dJJBdU1zCToB0PqaJ.jpg?ar=16%3A9&auto=compress&fit=crop&h=450&ixlib=php-4.1.0&q=75&w=800&s=448538aff4df179e2c7487dd5c48c92c")

# # p 'creating chev'
# # chev = Vehicle.new(ake:  "Corvette", model:  "Chevrolet", year:  "1968", passengers:  "2",
# #                    description:  "In 1968, Automotive history was made when a Hot Wheels car was released with a very unique shape. As remarkable as it may be, that was how the world found out about the “Custom Corvette” - which would, that very same year, roll out of the St. Louis factory as a highly attractive sports car.\n
# #                    With sharp styling - inspired originally by a shark, rather than a stingray - the C3 was an impressive looker, with a long nose, notchback cabin and pop-up headlights all creating one of the era's definitive vehicles. It was accented even further with 'T-Top' roof panels and packed with some of the very best in Chevrolet's V8 powerplants.\n
# #                    This early example includes the rare optional side-mounted exhausts, the powerful 427ci L71 V8 powerplant, and a desirable manual transmission. It comes to us in beautiful light burgundy paintwork with chrome accents and matching numbers, making for an exclusive and complete survivor.",
# #                    city: "Paris", country: "France", price: "120", vehicle_type: "car" )
# # p 'setting user'
# # chev.user = leo
# # p 'adding photos'
# f40.photos.attach([{ io: f401, filename: "f401.png", content_type: "image/png" },
#   { io: f402, filename: "f402.png", content_type: "image/png" },
#   { io: f403, filename: "f403.png", content_type: "image/png" }])
# p 'photos added'
# f40.save!
# p 'f40 saved'

# if f40.latitude
#   p "f40 address saved"
# else
#   p "f40 address not saved"
# end
