# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#restaurants
restaurants = Restaurant.create([{id: 1, name: "Jamie's Italian", description: "Jamie’s Italian was founded in Oxford in 2008. Since then it has grown to more than 30 restaurants worldwide, and there are already plans for even more in towns, counties and countries around the world. But that’s not even half the story... 
Our menu is rooted in authenticity. We’re all about fantastic, rustic dishes created using tried and tested recipes. Jamie’s friend and mentor, Gennaro Contaldo, has added substance to what is now the essence of Jamie’s Italian – tradition combined with current, innovative ideas and a Jamie twist.>", address: "Oxford, 24-26 George Street, Oxford, OX1 2AE", location: "Oxford", gps_lat: 51.753729, gps_lon: -1.260576, category: "Italian"},
    {id: 2, name: "Gallo & Galetti", description: "Opened in May 2013, Gallo & Galetti is the exciting answer to modern Italian dining in Cork. 
Located at High street Wilton, Bishopstown it is ideally situated across from Cork’s university hospital (CUH) and close to Wilton shopping centre. Gallo & Galetti poses as the perfect neighbourhood restaurant and has come as a welcome addition to the Western suburbs of Cork.", address: "Unit 7/8 High Street, Wilton, Cork", location: "Wilton, Cork", gps_lat: 51.880978, gps_lon: -8.511125, category: "Italian"},
  {id: 3, name: "Bellagio", description: "Bellagio Restaurant is an architect-designed Italian restaurant serving modern and authentic Italian food and wine in the centre of Terenure village in Dublin 6w. 
The glass-fronted facade and rich interior is designed to offer a world away from home, where you can relax and enjoy delicious food, a truly delightful atmosphere and exceptional service. 
We welcome everyone including families, diners with special dietary requirements and parties and groups.", address: "92 TERENURE ROAD NORTH, DUBLIN 6W", location: "Dublin 6W", gps_lat: 53.311425, gps_lon: 6.282762, category: "Italian"}])

#dishes
# create_table "dishes", force: true do |t|
#    t.string   "name"
#    t.text     "description"
#    t.string   "category"
#    t.datetime "created_at"
#    t.datetime "updated_at"
#    t.integer  "restaurant_id"
#  end
#Mayor.create(name: 'Emanuel', city: cities.first)

dishes = Dish.create([{id: 1, name: "TURKEY MILANESE", description: "Stuffed with prosciutto & fontal cheese, breadcrumbed & fried with a free-range egg & wild truffle", category: "Main Course", restaurant_id: 1}, 
  {id: 2, name: "CHICKEN AL MATTONE", description: "Free-range marinated chicken with a creamy wild mushroom sauce, lemony rocket, crostini & Parmesan", category: "Main Course", restaurant_id: 1}, 
  {id: 3, name: "ITALIAN STEAK FRITES", description: "Marinated & chargrilled featherblade steak, Italian-spiced skinny fries, pickles & crunchy kale slaw", category: "Main Course", restaurant_id: 1}, 
  {id: 4, name: "LAMB CHOPS SCOTTADITTA", description: "Chops grilled under a brick with a herby red onion salad, toasted nuts, yoghurt for dunking & polenta chips", category: "Main Course", restaurant_id: 1}, 
  {id: 5, name: "CALVES’ LIVER & BACON ITALIAN STYLE", description: "Served with mashed potato, smashed squash, pine nuts, raisins & onion gravy", category: "Main Course", restaurant_id: 1}, 
  
  {id: 6, name: "TUSCAN CHICKEN", description: "ROAST CHICKEN STUFFED WITH SPICY ITALIAN SAUSAGE, TUSCAN PEPPERONATA", category: "Main Course", restaurant_id: 2}, 
  {id: 7, name: "DOUBLE PORK CHOP", description: "DOUBLE PORK CHOP, WITH SAGE BUTTER, BALSAMIC & THYME MARINATED RED PEPPERS & SUN DRIED TOMATOES", category: "Main Course", restaurant_id: 2}, 
  {id: 8, name: "CHICKEN CANNELLINI", description: "ROAST CHICKEN SUPREME WITH A PANCETTA, CANNELLINI BEAN & FRESH HERB CASSEROLE", category: "Main Course", restaurant_id: 2}, 
  {id: 9, name: "SIRLOIN STEAK", description: "PAN ROAST 10oz. SIRLOIN STEAK, ROAST TOMATO & CHUNKY CHIPS (WITH A CHOICE OF PEPPER SAUCE, GARLIC BUTTER OR MUSHROOM SAUCE)", category: "Main Course", restaurant_id: 2}, 
  
  {id: 10, name: "Pancia di maiale", description: "Pork belly confit, crackling, sour cabbage, grain mustard", category: "Main Course", restaurant_id: 3} , 
    {id: 11, name: "Coniglio", description: "Rabbit loin, pancetta, sweet and sour onions, baby vegetables, light jus", category: "Main Course", restaurant_id: 3}, 
  {id: 12, name: "Piccione", description: "Squab pigeon: roasted breast, confit leg, beetroots, porcini", category: "Main Course", restaurant_id: 3}, 
  {id: 13, name: "Scottadito", description: "Grilled lamb cutlets, broccoli puree, grilled baby onions, citrus yogurt", category: "Main Course", restaurant_id: 3}, 
  {id: 14, name: "Vitello da latte", description: "Pan fried veal striploin, cheek cooked in milk, finferli mushrooms, Marsala", category: "Main Course", restaurant_id: 3}, 
  {id: 15, name: "Filetto di bue", description: "Center cut beef fillet tournedo, foie gras, potato rosti, beef jus", category: "MaMain Courseins", restaurant_id: 3} ])

#images for restaurants
#create_table "images", force: true do |t|
#    t.string   "name"
#    t.text     "description"
#    t.string   "location_path"
#    t.datetime "created_at"
#    t.datetime "updated_at"
#    t.integer  "imageable_id"
#    t.string   "imageable_type"
#  end

images1 = Image.create([ {id: 1, name: "JaimiesItalian01a.jpg", description: "Jaimie's Italian picture", location_path: "restaurants/", imageable_id: 1, imageable_type: "Restaurant"}, 
  {id: 2, name: "Gallo and Galetti.jpg", description: "Gallo and Galetti picture", location_path: "restaurants/", imageable_id: 2, imageable_type: "Restaurant"}, 
  {id: 3, name: "Bellagio.jpg", description: "Bellagio picture", location_path: "restaurants/", imageable_id: 3, imageable_type: "Restaurant"} ])

#images for dishes
images2 = Image.create([ {id: 4, name: "TURKEY MILANESE.jpeg", description: "TURKEY MILANESE.jpeg picture", location_path: "dishes/", imageable_id: 1, imageable_type: "Dish"}, 
  {id: 5, name: "CHICKEN AL MATTONE.jpg", description: "CHICKEN AL MATTONE.jpg picture", location_path: "dishes/", imageable_id: 2, imageable_type: "Dish"},
  {id: 6, name: "ITALIAN STEAK FRITES.jpg", description: "ITALIAN STEAK FRITES.jpg picture", location_path: "dishes/", imageable_id: 3, imageable_type: "Dish"}, 
  {id: 7, name: "LAMB CHOPS SCOTTADITTA.jpg", description: "LAMB CHOPS SCOTTADITTA.jpg picture", location_path: "dishes/", imageable_id: 4, imageable_type: "Dish"},
  {id: 8, name: "CALVES LIVER AND BACON ITALIAN STYLE.jpg", description: "CALVES LIVER AND BACON ITALIAN STYLE.jpg picture", location_path: "dishes/", imageable_id: 5, imageable_type: "Dish"},
  
  {id: 9, name: "TUSCAN CHICKEN.jpg", description: "TUSCAN CHICKEN.jpg picture", location_path: "dishes/", imageable_id: 6, imageable_type: "Dish"},
  {id: 10, name: "DOUBLE PORK CHOP.jpg", description: "DOUBLE PORK CHOP.jpg picture", location_path: "dishes/", imageable_id: 7, imageable_type: "Dish"},
  {id: 11, name: "CHICKEN CANNELLINI.jpg", description: "CHICKEN CANNELLINI.jpg picture", location_path: "dishes/", imageable_id: 8, imageable_type: "Dish"}, 
  {id: 12, name: "SIRLOIN STEAK.jpg", description: "SIRLOIN STEAK.jpg picture", location_path: "dishes/", imageable_id: 9, imageable_type: "Dish"},
 
  {id: 13, name: "Pancia di maiale.jpg", description: "Pancia di maiale.jpg picture", location_path: "dishes/", imageable_id: 10, imageable_type: "Dish"},
  {id: 14, name: "Coniglio.jpg", description: "Coniglio.jpg picture", location_path: "dishes/", imageable_id: 11, imageable_type: "Dish"},
  {id: 15, name: "Piccione.jpg", description: "Piccione.jpg picture", location_path: "dishes/", imageable_id: 12, imageable_type: "Dish"},
  {id: 16, name: "Scottadito.jpg", description: "Scottadito.jpg picture", location_path: "dishes/", imageable_id: 13, imageable_type: "Dish"},
  {id: 17, name: "Vitello da latte.jpg", description: "Vitello da latte.jpg picture", location_path: "dishes/", imageable_id: 14, imageable_type: "Dish"},
   {id: 18, name: "Filetto di bue.jpg", description: "Filetto di bue.jpg picture", location_path: "dishes/", imageable_id: 15, imageable_type: "Dish"}
  ])


