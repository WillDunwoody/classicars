will = User.create( email:"will@dailyclassics.com", password:"1234567" )

new1 = Vehicle.new( make:"Fiat", model:"500", year:"1972", passengers:"4",
                description:"The Fiat 500L is a rear wheel drive road car, with the engine placed in the rear, and a 2 door saloon(sedan) body. It's powered courtesy of a naturally aspirated engine of 0.5 litre capacity.",
                city: "Florence", country: "Italy", price:"150", vehicle_type: "car")
new1.user = will
new1.save

new3 = Vehicle.new( make:"Ferrari", model:"Testarossa", year:"1984", passengers:"2",
  description:"The Paris Motor Show in October 1984 saw the return of the glorious Testarossa as heir to the 512 BBi. Pininfarina’s design broke somewhat with tradition and was striking and innovative.",
  city: "Maranello", country: "Italy", price:"270", vehicle_type: "car")
new3.user = will
new3.save

new4 = Vehicle.new( make:"Ferrari", model:"F40", year:"1987", passengers:"2",
  description:"The Ferrari F40(tipo F120) is a mid-engine, rear-wheel drive sports car[12] engineered by Nicola Materazzi with styling by Pininfarina. It was built from 1987 to 1992",
  city: "Rome", country: "Italy", price:"196", vehicle_type: "car")
new4.user = will
new4.save

new5 = Vehicle.new( make:"Lamborghini", model:"Countach", year:"1974", passengers:"2",
  description:"The Lamborghini Countach is a rear mid-engine, rear-wheel-drive sports car produced by the Italian = willobile manufacturer Lamborghini from 1974 until 1990. It is one of the many exotic designs developed by Italian design house Bertone.",
  city: "Milan", country: "Italy", price:"180", vehicle_type: "car")
new5.user = will
new5.save

new6 = Vehicle.new( make:"Lamborghini", model:"Diablo", year:"1998", passengers:"2",
  description:"Lamborghini Diablo VT Roadster, presented in stellar Smalto Rosso over Nero Leather Interior with the incredible 5-Speed Manual Transmission..",
  city: "Napoli", country:"Italy", price:"240", vehicle_type: "car")
new6.user = will
new6.save

new7 = Vehicle.new( make:"Volkswagen", model:"Beetle", year:"1964", passengers:"2",
  description:"The Volkswagen Beetle—officially the Volkswagen, vehicle_Type 1, informally in German der Käfer(meaning 'beetle'), in parts of the English-speaking world the Bug,[7] and known by many other nicknames in other languages—is a two-door, rear-engine economy car,.",
  city:"Wolfsburg", country:"German", price:"75", vehicle_type: "car")
new7.user = will
new7.save

new8 = Vehicle.new( make:"Volkswagen", model:"Westfalia", year:"1958", passengers:"6",
  description:"The Volkswagen Westfalia Camper was a conversion of the Volkswagen, vehicle_Type 2, and then, the Volkswagen, vehicle_Type 2(T3), sold from the early 1950s to 2003. Volkswagen subcontracted the modifications to the company Westfalia-Werke in Rheda-Wiedenbrück. .",
  city:"Berlin", country:"Germany", price:"85", vehicle_type: "car")
new8.user = will
new8.save

new9 = Vehicle.new( make:"Mercedes", model:"sl 300", year:"1951", passengers:"2",
  description:"The Mercedes-Benz 300 SL(chassis code W 198) is a two-seat sports car which was produced by Mercedes-Benz as a gullwinged coupe(1954–1957) and roadster(1957–1963).",
  city:"Londob", country:"England", price:"92", vehicle_type: "car")
new9.user = will
new9.save

new10 = Vehicle.new( make:"Mini", model:"Cooper mk II", year:"1968", passengers:"2",
  description:"This 1968 Austin Mini Cooper S is a modified left-hand drive Mk II that was refurbished 500 kilometers ago in late 2016..",
  city:"Belfast", country:"Northern Ireland", price:"60", vehicle_type: "car")
new10.user = will
new10.save
