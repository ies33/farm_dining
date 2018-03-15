# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# remote_photo_url:"https://cdn.shopify.com/s/files/1/1003/1822/products/Carrot_Danvers_42077753_2048x2048.jpeg" ,
# remote_photo_url: "https://avatars3.githubusercontent.com/u/31936412?s=460&v=4")
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Saves new user

# New user MADS
require "cloudinary"
include CloudinaryHelper

puts 'Cleaning DB....'
Order.destroy_all
Ingredient.destroy_all
Farm.destroy_all
ShoppingBasket.destroy_all
Restaurant.destroy_all
User.destroy_all

puts 'add users mads, floor, mark, iris'
# New user Mads
mads = User.new(
  email: "mads@gmail.com",
  password: "password"
)
mads.remote_photo_url = "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg"
mads.save!

# New user Floor
floor = User.new(
  email: "floor@gmail.com",
  password: "password"
)
floor.remote_photo_url = cl_image_path("eksfh0ibso2p5idyqarw.jpg")
floor.save!

# New user Mark
mark = User.new(
  email: "mark@gmail.com",
  password: "password")
mark.remote_photo_url = "https://avatars1.githubusercontent.com/u/35243620?s=400&v=4"
mark.save!

# New user Iris
iris = User.new(
  email: "irisi@gmail.com",
  password: "password")
# Adds user's photo
iris.remote_photo_url = "https://avatars1.githubusercontent.com/u/35067263?s=460&v=4"
# Saves new user
iris.save!

puts 'add restaurants to users mads, floor, mark and iris'
restaurant_floor = Restaurant.new(location: "Willem de Zwijgerlaan 100, Amsterdam", user: floor)
restaurant_floor.save!

restaurant_mads = Restaurant.new(location: "Bos en Lommerplein 2, Amsterdam", user: mads)
restaurant_mads.save!

restaurant_mark = Restaurant.new(location: "Utrecht", user: mark)
restaurant_mark.save!

restaurant_iris = Restaurant.new(location: "Zaandam", user: iris)
restaurant_iris.save!

puts 'Creating farms'

# example = Farm.new(
#   location: ,
#   farm_name: ,
#   farmers_name: ,
#   remote_avatar_photo_url: ,
#   remote_farm_photo_url: ,
#   farmer_email: ,
#   description: )
# example.save!

piet = Farm.new(
  location: "Overhoeksplein 2, Amsterdam",
  farm_name: "Boerderij Nooitgenoeg",
  farmers_name: "Piet de Boer",
  remote_avatar_photo_url: cl_image_path("piet-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-piet.jpg"),
  farmer_email: "piet.de.boer@gmail.com",
  description: "Description: needs attention :).")
piet.save!

franciscus = Farm.new(
  location: 'Schapenlaan 20, 1862 PW Bergen',
  farm_name: 'Van de Stolp',
  farmers_name: 'Franciscus de Groot',
  remote_avatar_photo_url: cl_image_path("franciscus-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-franciscus2.jpg"),
  farmer_email: 'franciscus.de.groot@gmail.com',
  description: "Description: needs attention :).")
franciscus.save!

bert = Farm.new(
  location: 'Grevelingen 12, Uithoorn',
  farm_name: 'De Witte Boerderij',
  farmers_name: 'Bert Spruitjes',
  remote_avatar_photo_url: cl_image_path("bert-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-bert2.jpg"),
  farmer_email: "bert.spruitjes@gmail.com",
  description: 'This farm is an organic farm. We have horses on the farm as well. We treat our plants with love and only harvest them when they are ready to shine. You are always welcome to see this for yourself.
  We make our own cheeses. Also, we produce our own sausages. They are very popular. Feel free to contact us, to share ideas or just for a cup of coffee. This farm is a organic farm. We have horses on the farm as well.
  We treat our plants with love and only harvest them when they are ready to shine. You are always welcome to see this for yourself. We make our own cheeses. Also, we produce our own sausages. They are very popular. Feel free to contact us, to share ideas or just for a cup of coffee. They are very popular. Feel free to contact us, to share ideas or just for a cup of coffee.')
bert.save!

annelies = Farm.new(
  location: 'Burgemeester Peereboomweg 200, Zuiderwoude',
  farm_name: 'de Kas',
  farmers_name: 'Annelies de Jong',
  remote_avatar_photo_url: cl_image_path("annelies-squared2.jpg"),
  remote_farm_photo_url: cl_image_path("farm-annelies.jpg"),
  farmer_email: "annelies.de.jong@gmail.com",
  description: "I started farming 10 years ago after a career in banking. Having visited my uncle's farm, i fell in love with the profession. More than anything, farming is one of the only careers I know of that is at once physically, mentally, and spiritually fulfilling. A hard day’s work under the sun (or more times than not rain in Holland) does a body good; not only that, it stimulates the mind and nourishes the soul.
  Naturally, as cherry on the cake it is great to see the work i put into the field being rewarded by fresh, healthy plants which provide a good healthy diet and put a smile on my customers faces")
annelies.save!

anton = Farm.new(
  location: 'Den Ilp 63, 1127 PE Den Ilp',
  farm_name: 'Harvest Art',
  farmers_name: 'Anton Heyboer',
  remote_avatar_photo_url: cl_image_path("anton-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-anton.jpg"),
  farmer_email: 'anton.heyboer@gmail.com',
  description: "Harvest art farm and its scenary is as breathtaking as beutiful art. Hence the name. Here I have been growing well-tasting grains, vegetables and rootfruits for the past 30 years. Even though I use conventional methods, I minimize the use of resources to cherish the soil I am the care taker of.
  But beyond growing vegetables I also have an impressive number of livestock. As a livestock farmer I like my cows the same way I like my women: the more the merrier. In my own dairy I produce a well tasting, natural yoghurt perfect for a restaurant brunch tabel. And I spoil them rotten. Do you happen to pass by the area? Please come by and look how I produce the food served at your restaurant.")
anton.save!

hannes = Farm.new(
  location: 'Het Twiske',
  farm_name: 'Our Little place',
  farmers_name: 'Hannes de Kleine',
  remote_avatar_photo_url: cl_image_path("hannes-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-hannes.jpg"),
  farmer_email: 'hannes.de.kleine@gmail.com' ,
  description: "I am the fifth generation de Kleine to harvest the soil around Our Little place. My wife Charlotte and I have been running the farm for the past 40 years. In two years time my daughter, Johanna, will take it over with her family.
  The farm is small and therefore we have the possibility to put in extra care into all the produce we grow. Everything is biodynamically produced. I am particularly proud of our beautiful, award winning, kale.
  It is a true pleasure to sell our food here at Farm dining with the knowledge it will make a well tasting, high-quality meal.")
hannes.save!

angela = Farm.new(
  location: 'Oosteinde, de Weiver',
  farm_name: 'De Hooischuur',
  farmers_name: 'Angela Tok',
  remote_avatar_photo_url: cl_image_path("angela-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-angela.jpg"),
  farmer_email: 'angela.tok@gmail.com',
  description: "Our Farm is located in the Weiver in the watery Zaanstreek, me and my family of six grow Fruits, Vegetables Grains and we breed Quails and Turkeys, mainly Eggs and Poultry. We also can provide hay bales on request.  All seasons you can find us mostly outdoors. Our farm is open for visits - please contact us beforehand, see below our contact information. We are happy to show you around  In spring it is really nice to visit our blossoming cherry orchard. in summer in our strawberry fields and harvest your own. In autumn we always organize a big harvest festival. It is also possible to organize parties, outside-dinners or weddings on our farm ground. We host guests from time-to-time welcome to our Bed & Farmers Breakfast.")
angela.save!

john = Farm.new(
  location: 'Ruit 2, Uithoorn',
  farm_name: 'Farmers Land',
  farmers_name: 'John van de Akker',
  remote_avatar_photo_url: cl_image_path("john-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-john.jpg"),
  farmer_email: 'john.van.de.akker@gmail.com',
  description: "We are the family van de Akker, Located in Uithoorn, just beneath Amsterdam, we are specialized in grains, like rye, we make our own cheese, fresh cheese and old farmers cheese. We have a big orchard, where our cows and goats can run freely.  Every second summer we grow strawberries and blueberries on our fields. In the rare case of spare time, we like to ride our horse and carriage, which my grandfather used long time ago, and have nice sunday afternoon trips. Once every while we  take part in the horse and carriage competitions, Our whole family enjoyes it to dress up in authentic Dutch clothing and wooden shoes than. Our farm is open for visits - please contact us beforehand, see below our contact information. We are happy to show you around.")
john.save!


# farm9= Farm.new(location:'Waverveen',farm_name:'The Big Barn',farmers_name:'Maik de Boer')
# farm9.save!

# farm4= Farm.new(
#   location:'Laan, Broek in Waterland',
#   farm_name:'Under The Willows',
#   farmers_name:'')
# farm4.save!

puts 'Creating ingredients..'
# ingr = Ingredient.new( name: "Test carrot" ,
#   description: "Mixed colors",
#   main_category: "Fruits & Vegetables "  ,sku:"car-01",
#   category: "Carrots"   ,
#   price: 5,
#   rating: "1",
#   available_quantity: 500000,
#   farm_id: farm1.id,
#   price_type: "per unit1",
#   remote_photo_url: cl_image_path("harshal-s-hirve-44494-unsplash.jpg"))

# ingr.save!


ingr = Ingredient.new(name:'Carrots',description:'Orange carrots, fresh from the land. The carrot (Daucus carota subsp. sativus) is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist. Carrots are a domesticated form of the wild carrot, Daucus carota, native to Europe and southwestern Asia.',main_category:'Fruit & Vegetables',category:'Carrots',price:2,rating:5,sku:'1',farm_id:piet.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('harshal-s-hirve-44494-unsplash.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Dried Chickpeas',description:'chickpeas dried Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Grains & Legumes',category:'Legumes',price:3,rating:4,sku:'3',farm_id:franciscus.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-273838.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Steak',description:'This true Dutch original has robust flavor and is tender enough to simply sear to a perfect velvety pink. Or try marinating to impart even more juicy tenderness. You might know this well-marbled loin cut as a Amsterdam City strip. Always performs well — broiled, grilled or pan-fried.',main_category:'Meat',category:'Beef',price:6,rating:3,sku:'5',farm_id:bert.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-112781.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Chicken Eggs',description:'When chickens begin laying, they lay small pullet-sized eggs, often only a fraction of the size they will lay as adults. It can take three or four months for a chicken to start laying their adult sized eggs. As the bird ages, they lay less often. It is not uncommon for the eggs to be larger when they are laid less often. My Ameraucana is of prime age to provide you the biggest eggs',main_category:'Dairy & Eggs',category:'Eggs',price:2,rating:2,sku:'6',farm_id:annelies.id,  available_quantity:20,price_type:'Dose(20)',  remote_photo_url: cl_image_path('Metal-easter-eggs-basket.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Wheat grains',description:'Wheat grains Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Grains & Legumes',category:'Grains',price:2,rating:4,sku:'7',farm_id:anton.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Food-grains-bread-wheat-cereals-41959.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Kale',description:'Kale lorem ipsum  and so on ',main_category:'Fruit & Vegetables',category:'Vegetables',price:0.5,rating:5,sku:'8',farm_id:hannes.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('Kale-vegetables-brassica-oleracea-var-sabellica-l-51372.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Sausages',description:'Sausages lorem ipsum  and so on ',main_category:'Meat',category:'Porc',price:2,rating:4,sku:'9',farm_id:angela.id,  available_quantity:20,price_type:'Set(10)',  remote_photo_url: cl_image_path('meat-fridge-food-sausage-84267.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Old Farmers Cheese',description:'The best and very tasty cheese  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Dairy & Eggs',category:'Cheese',price:17,rating:3,sku:'10',farm_id:john.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-277276.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Potatoes',description:'all potatoes',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:2,sku:'11',farm_id:piet.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('Potatoes-vegetables-erdfrucht-bio-144248.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Corn',description:'Corn lorem ipsum lorem loriadad',main_category:'Grains & Legumes',category:'Grains',price:3,rating:1,sku:'12',farm_id:franciscus.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-206653.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Smoked Bacon',description:'Whether you use it in strips or in bits, bacon offers big, smoky flavor to a wide variety of dishes. Add to your greens, your omelettes, your beans, salads, and sauces. Its always just the right thing to give meals rich, meaty flavor. This flavorful smoked, and uncured, nitrate/nitrite-free bacon offers all the flavor you want with none of the extras you dont.',main_category:'Meat',category:'Porc',price:10,rating:5,sku:'13',farm_id:bert.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-306799.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Cow-milk',description:'Gold Taste of Friesland. Straight from our own Friesian cows, this raw, unhomogenised milk is full cream and packed full of goodness. Our milk comes from the cow, chilled then bottled for you. With so many highly processed foods, this natural product is a must try - once you have tried processed, milk will never taste the same again!',main_category:'Dairy & Eggs',category:'Milk',price:2,rating:4,sku:'14',farm_id:annelies.id,  available_quantity:30,price_type:'liters',  remote_photo_url: cl_image_path('Pexels-photo-248337.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Fresh Yoghurt',description:'The best Goat’s milk yoghurt.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Dairy & Eggs',category:'Yoghurt',price:2,rating:3,sku:'15',farm_id:anton.id,  available_quantity:30,price_type:'liters',  remote_photo_url: cl_image_path('Pexels-photo-373882.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Cabbage',description:'Cabbage cabbage lorem ipusm ',main_category:'Fruit & Vegetables',category:'Vegetables',price:2,rating:2,sku:'16',farm_id:hannes.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('Cabbage-vegetable-power-green.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Strawberries',description:'',main_category:'Fruit & Vegetables',category:'Berries',price:10,rating:5,sku:'17',farm_id:angela.id,  available_quantity:50,price_type:'kg',  remote_photo_url: cl_image_path('seoyytrlnsd9wuxz5cyv.png'))
ingr.save!
ingr = Ingredient.new(name:'Apples',description:'',main_category:'Fruit & Vegetables',category:'Apples',price:4,rating:4,sku:'18',farm_id:john.id,  available_quantity:60,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-635705.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Pear',description:'',main_category:'Fruit & Vegetables',category:'Pears',price:3,rating:3,sku:'19',farm_id:piet.id,  available_quantity:60,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-568471_1.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Pepper',description:'',main_category:'Fruit & Vegetables',category:'vegetables',price:3,rating:5,sku:'20',farm_id:franciscus.id,  available_quantity:100,price_type:'kg',  remote_photo_url: cl_image_path('pepper-and-vegetables-3-1322872-1278x855.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Chicken',description:'Certified organic Smart Chicken are fed an organic grain diet, are free-range, and certified humane by the Humane Farm Animal Care. All Smart Chicken products are raised without the use of antibiotics, animal byproducts, growth hormones, and are 100 percent all-natural. Theyre processed using purified cold air instead of water — thats the air-chilled difference.',main_category:'Meat',category:'poultry',price:8,rating:4,sku:'21',farm_id:bert.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-616354.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Zucchini',description:'This flavorful squash is available at its peak all year round. It is a mild and extremely versatile vegetable. Slice, chop, stuff, or grate it. Zucchini adds a fresh garden flavor to breads, soups, and pastas, and its great by itself as a simply sautéed side dish.', main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:3,sku:'22',farm_id:annelies.id,  available_quantity:80,price_type:'kg',  remote_photo_url: cl_image_path('italian-zucchine-1562358.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Beets',description:'',main_category:'Fruit & Vegetables',category:'Vegetables',price:3,rating:5,sku:'23',farm_id:anton.id,  available_quantity:56,price_type:'kg',  remote_photo_url: cl_image_path('beets-for-sale-2-1326248-1280x960.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Green Peas',description:'',main_category:'Grains & Legumes',category:'Peas',price:3.5,rating:4,sku:'24',farm_id:hannes.id,  available_quantity:40,price_type:'kg',  remote_photo_url: cl_image_path('peas-in-a-pod-1574302-1279x889.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Quail Eggs',description:'',main_category:'Dairy & Eggs',category:'Eggs',price:4,rating:3,sku:'25',farm_id:angela.id,  available_quantity:10,price_type:'Dose(20)',  remote_photo_url: cl_image_path('pexels-photo-810320.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Fresh Cheese',description:'',main_category:'Dairy & Eggs',category:'Cheese',price:5,rating:5,sku:'26',farm_id:john.id,  available_quantity:10,price_type:'kg',  remote_photo_url: cl_image_path('fresh-cheese-1516657.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Spare-ribs',description:'',main_category:'Meat',category:'Porc',price:18,rating:4,sku:'27',farm_id:piet.id,  available_quantity:60,price_type:'kg',  remote_photo_url: cl_image_path('silhouette-of-summer-garden-bbq-isolated-against-fire-1632139-1278x800.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Blackberry Jam',description:'Homemade blackberry jam, harvest of summer 2017,  taste the sweet and sour. Nice with cheese or  salads or meat.',main_category:'Fruit & Vegetables',category:'confituur',price:2,rating:3,sku:'28',farm_id:franciscus.id,  available_quantity:15,price_type:'jar',  remote_photo_url: cl_image_path('jam-jars-1257491-1280x960.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Haricots',description:'Slim and sophisticated, haricots verts have a brighter, more concentrated flavor than string beans, but the biggest difference is texture. The petite French beans are tender and delicate. Tie up bundles with chives and steam, or add to a salade niçoise.',main_category:'Fruit & Vegetables',category:'Beans',price:3.5,rating:5,sku:'29',farm_id:bert.id,  available_quantity:25,price_type:'kg',  remote_photo_url: cl_image_path('fruits-and-veggies-1191769-1280x960.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Tomatoes',description:'Juicy and firm, bursting with tangy, sweet, concentrated tomato flavor. The warm sun has coaxed these fire-engine red beauties to the peak of ripeness. Showcase vine-ripened tomatoes peerless freshness in dishes such as tomato and basil bruschetta. Or dice and toss with olive oil, garlic, and basil for a simple yet unforgettable pasta topping.',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:4,sku:'30',farm_id:annelies.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('tomatoes-1323819-1279x852.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Parsnip',description:'Parsnips, rich taste, fresly harvested. For soups, stews…',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:3,sku:'31',farm_id:anton.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('healthy-white-parsnip-with-green-beans-isolated-1632298-1279x853.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Minced Meat',description:'',main_category:'Meat',category:'Beef',price:18,rating:5,sku:'32',farm_id:hannes.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('minced-meat-2-1547786-1279x902.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Quail',description:'',main_category:'Meat',category:'poultry',price:18,rating:4,sku:'33',farm_id:angela.id,  available_quantity:10,price_type:'kg',  remote_photo_url: cl_image_path('quail-2-1312897-1279x913.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Rye',description:'',main_category:'Grains & Legumes',category:'Grains',price:4,rating:3,sku:'34',farm_id:john.id,  available_quantity:25,price_type:'kg',  remote_photo_url: cl_image_path('wheat-in-summer-1566168-1279x913.jpg'))
ingr.save!





puts "Finished, yeah!"
