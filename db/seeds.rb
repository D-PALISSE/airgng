puts 'Cleaning DB...'
Booking.destroy_all
Goat.destroy_all
User.destroy_all


puts 'Creating new goats'

# TODO: REMPLIR LES CHAMPS VIDE CI-DESOUS

david = User.create!(first_name: "David", last_name: "PALISSE", description: "As far as I remember, I've always wanted to be a goat shepherd. I love goats and need them in my life like the sun needs the moon.", email: "d.pall@mycheptel.fr", password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/david.jpg')))
thierry = User.create!(first_name: "Thierry", last_name: "DE AZEVEDO", description: "ceci est une description", email: "tda@campagne.com" ,password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/thierry.jpg')))
matthias = User.create!(first_name: "Matthias", last_name: "GEOFFROY",  description: "ceci est une description", email: "mgeof@prairie.com",password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/matthias.jpg')))
nassim = User.create!(first_name: "Nassim", last_name: "BOUKHALFA",  description: "ceci est une description", email: "nassbouk@vivelanature.com" ,password: "123456",
avatar: File.open(Rails.root.join('db/fixtures/avatars/nassim.jpg')))


goat_1 = Goat.create!(name: "Jacqueline", specie: "goat des fossés",
  description: "My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Roubaix", owner: david, photo: File.open(Rails.root.join('db/fixtures/goats/chevre_1.jpg')), daily_price: 22)
goat_2 =Goat.create(name: "Magdalena", specie: "alpine goat",
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Nantes", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_2.jpg')), daily_price: 15)
goat_3 =Goat.create(name: "Josette", specie: "poitevine goat" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Orléans", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_3.jpg')), daily_price: 20)
goat_4 =Goat.create(name: "Dounia", specie: "lorraine goat" ,
  description: "My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Les Herbiers", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_4.jpg')), daily_price: 18)
goat_5 =Goat.create(name: "Sabrina", specie: "central massif goat" ,
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Grenoble", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_5.jpg')), daily_price: 28)
goat_6 =Goat.create(name: "Diana", specie: "saanen" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Rodez", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_6.jpg')), daily_price: 23)
goat_7 =Goat.create(name: "Carline", specie: "angora" ,
  description: "My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Nantes", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_7.jpg')), daily_price: 19)
goat_8 =Goat.create(name: "Charley", specie: "provençale goat" ,
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Albi", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_8.jpg')), daily_price: 22)
goat_9 =Goat.create(name: "Margaux", specie: "rove" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Nantes", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_9.png')), daily_price: 20)
goat_10 =Goat.create(name: "Clotilde", specie: "corsica goat" ,
  description:"My goat, raised in the green pastures of our region likes to tackle new fields. She has a great ability to graze in a short time." ,
  address: "Nantes", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_10.jpg')), daily_price: 21)
goat_11 =Goat.create(name: "Myrtille", specie: "pyrenex goat" ,
  description: "Raised on steep terrain, our goat has a very strong ability to adapt to any type of terrain. She will clean every corner of your garden." ,
  address: "Saint Brieuc", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_11.jpg')), daily_price: 17)
goat_12 =Goat.create(name: "Angela", specie: "provençale goat" ,
  description: "With a strong chewing ability and an exceptional metabolism, our goat will clean your garden and give you milk to enhance your culinary tastes." ,
  address: "Ajaccio", owner: david, photo:File.open(Rails.root.join('db/fixtures/goats/chevre_12.jpg')), daily_price: 25)

Booking.create(user: matthias, goat: goat_6, status: "pending" , beginning_date: "25/03/2019", end_date: "27/03/2019", total_amount: 69)
Booking.create(user: matthias, goat: goat_3, status: "accepted" , beginning_date: "30/03/2019", end_date: "04/04/2019", total_amount: 120)
Booking.create(user: matthias, goat: goat_12, status: "denied" , beginning_date: "25/03/2019", end_date: "27/03/2019", total_amount: 75)
Booking.create(user: nassim, goat: goat_8, status: "denied" , beginning_date: "22/03/2019", end_date: "23/03/2019", total_amount: 44)
Booking.create(user: nassim, goat: goat_12, status: "accepted" , beginning_date: "25/03/2019", end_date: "27/03/2019", total_amount: 75)

puts 'Finished!'
