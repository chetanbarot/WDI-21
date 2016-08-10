# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This is to link the carrierwave/imageuploader images to the seed file 
# recipe_image: File.open(Rails.root.to_s + '/seedImages/egg.png') 


User.destroy_all
Recipe.destroy_all
Category.destroy_all

u1 = User.create!(
  first_name: "Chetan",
  last_name: "Barot",
  username: "Chetan Barot",
  email: "chetan@chetan.com",
  password: "password",
  password_confirmation: "password",
  role: "Junior Developer",
  profile_image: open('db/images/profile-pic.jpg')
  )

u1.save!

u2 = User.create!(
  first_name: "Bob",
  last_name: "Smith",
  username: "Bob Smith",
  email: "bob@bob.com",
  password: "password",
  password_confirmation: "password",
  role: "Head Chef",
  profile_image: open('db/images/d637c16c395aeb7a8a4003f7ed2543fe.jpg')
  )

u2.save!

u3 = User.create!(
  first_name: "Joe",
  last_name: "Beaver",
  username: "Joe Beaver",
  email: "joe@joe.com",
  password: "password",
  password_confirmation: "password",
  role: "Head Chef",
  profile_image: open('db/images/meiko.png')
  )

u3.save!

u4 = User.create!(
  first_name: "Sue",
  last_name: "kiddy",
  username: "Sue Kiddy",
  email: "sue@sue.com",
  password: "password",
  password_confirmation: "password",
  role: "House Wife",
  profile_image: open('db/images/AAEAAQAAAAAAAAf9AAAAJGVkNDJkZDA1LTgyNGEtNDQ0Ny1iZGJiLWZjNzY2MjA5ZDdkNw.jpg')
  )
u5 = User.create!(
  first_name: "Prashant",
  last_name: "Yewale",
  username: "Prashant",
  email: "prashant@prashant.com",
  password: "password",
  password_confirmation: "password",
  role: "Head Chef",
  profile_image: open('db/images/2b84951.jpg')
  )
u6 = User.create!(
  first_name: "Pranab",
  last_name: "Sanyal",
  username: "Pranab",
  email: "pranab@pranab.com",
  password: "password",
  password_confirmation: "password",
  role: "Head Chef",
  profile_image: open('db/images/AAEAAQAAAAAAAAcAAAAAJGMzOWIxZTZlLWY1N2MtNDFiZi04NjYwLTc5OWJiNmQ3NmU1MA.jpg')
  )

u7 = User.create!(
  first_name: "Kate",
  last_name: "Saldon",
  username: "Kate",
  email: "kate@kate.com",
  password: "password",
  password_confirmation: "password",
  role: "Pastry Chef",
  profile_image: open('db/images/Kate Milashus 1.jpg')
  )

u8 = User.create!(
  first_name: "Rob",
  last_name: "Hunter",
  username: "Rob Hunter",
  email: "Rob@Rob.com",
  password: "password",
  password_confirmation: "password",
  role: "Sous Chef",
  profile_image: open('db/images/AAEAAQAAAAAAAAf9AAAAJGVkNDJkZDA1LTgyNGEtNDQ0Ny1iZGJiLWZjNzY2MjA5ZDdkNw.jpg')
  )

u9 = User.create!(
  first_name: "Alex",
  last_name: "Penhaligon",
  username: "Alex Penhaligon",
  email: "Alex@Alex.com",
  password: "password",
  password_confirmation: "password",
  role: "Super Chef",
  profile_image: open('db/images/marcus-wareing-and-head-chef-alex-penhaligon-392224258.jpg')
  )

u10 = User.create!(
  first_name: "Jeffery",
  last_name: "Wilmot",
  username: "Jeffery Wilmot",
  email: "jeffery@jeffery.com",
  password: "password",
  password_confirmation: "password",
  role: "House Wife",
  profile_image: open('db/images/chef-jeff-anderson.png')
  )

u4.save!

c1 = Category.create!(
  name: "Breakfast"
  )

c1.save!

c2 = Category.create!(
  name: "Lunch"
  )

c2.save!

c3 = Category.create!(
  name: "Dinner"
  )

c3.save!

c4 = Category.create!(
  name: "Kids Meal"
  )

c4.save!


r1 = Recipe.create!(
  title: "CHICKEN AND CHORIZO TACOS",
  ingredients: "250G FIRM AIR-DRIED CHORIZO, CASES REMOVED AND CHOPPED
2 TABLESPOONS EXTRA VIRGIN OLIVE OIL 
500G CHICKEN MINCE 
2 CLOVES GARLIC, CRUSHED 
½ TEASPOON CHILLI FLAKES 
SEA SALT AND CRACKED BLACK PEPPER 
8 SMALL TORTILLAS, WARMED 
1 AVOCADO, SEEDED AND SLICED 
½ CUP (120G) SOUR CREAM, PLUS EXTRA TO SERVE 
1 X 400G CAN BLACK BEANS, RINSED AND DRAINED 
1 CUP CORIANDER (CILANTRO) LEAVES 
CHILLI SAUCE AND LIME WEDGES, TO SERVE",
  method: "Place the chorizo in a small food processor and process until finely chopped. Heat the oil in a large non-stick frying pan over high heat. Add the chicken, chorizo, garlic, chilli, salt and pepper and cook, breaking up any lumps with a wooden spoon, for 12–15 minutes or until browned and cooked through. 
Divide the chicken mixture between the tortillas. Top with the avocado, sour cream, black beans and coriander. Serve with the chilli sauce, lime and extra sour cream. Serves 4.",
  time: "20 MINS",
  images: [open('db/images/Chicken-and-chorizo-tacos_0365.jpg')],
  user_id: u1.id,
  category_id: c4.id 
  )

r2 = Recipe.create!(
  title: "CHEAT'S CHORIZO PAELLA",
  ingredients: "1 TABLESPOON OLIVE OIL
2 CLOVES GARLIC, SLICED 
1 ONION, CHOPPED 
1 CHORIZO SAUSAGE, SLICED 
1 CUP (200G) MEDIUM-GRAIN RICE 
2 CUPS (500ML) CHICKEN STOCK 
1 X 400G CAN CRUSHED TOMATOES 
½ CUP CORIANDER (CILANTRO) LEAVES 
100G FETA, CRUMBLED",
  method: "Heat the oil in a large, deep frying pan over high heat. Add the garlic, onion and chorizo and cook for 4–5 minutes or until browned. 
Add the rice, stock and tomato, cover, reduce heat to low and cook for a further 15 minutes or until stock is absorbed and rice is al dente. Stir through the coriander and feta to serve. Serves 2.",
  time: "20 MINS",
  images: [open('db/images/cheats_chorizo_paella.jpg')],
  user_id: u1.id,
  category_id: c4.id 
  )

r3 = Recipe.create!(
  title: "BROCCOLI, BACON AND QUINOA FRITTERS",
  ingredients: "4 RASHERS BACON, RIND REMOVED AND CHOPPED 
2 X 400G CANS WHITE (CANNELLINI) BEANS, DRAINED, RINSED AND MASHED 
200G STEAMED BROCCOLI, FINELY CHOPPED 
3 CUPS (570G) COOKED QUINOA, SEE BELOW 
SEA SALT AND CRACKED BLACK PEPPER 
½ CUP (50G) GRATED MOZZARELLA 
1 EGG, LIGHTLY BEATEN 
¼ CUP CHOPPED BASIL LEAVES 
2 TABLESPOONS OLIVE OIL 
TOMATO CHUTNEY, TO SERVE",
  method: "Heat a non-stick frying pan over high heat. Add the bacon and cook for 3–4 minutes or until golden. 
Place the mashed whitebean, broccoli, quinoa, salt, pepper, mozzarella, egg, bacon and basil in a bowl and mix well to combine. Shape 2 tablespoonfuls ofthe mixture at a time into fritters and refrigerate for 20 minutes. 
Heat the oil in a large frying pan over medium heat and cook the fritters, in batches, for 2–3 minutes each side or until golden. Serve with tomato chutney and a green salad, if desired. Serves 4.",
  time: "20 MINS",
  images: [open('db/images/broccoli_bacon_quinoa_fritters.jpg'
)],
  user_id: u1.id,
  category_id: c4.id 
  )

r4 = Recipe.create!(
  title: "BEEF AND HORSERADISH SCHNITZEL

with deconstructed colcannon",
  ingredients: "1 X 800G BEEF RUMP STEAK, TRIMMED
½ CUP (75G) PLAIN (ALL-PURPOSE) FLOUR 
SEA SALT AND CRACKED BLACK PEPPER 
2 EGGS 
¼ CUP (60ML) MILK 
½ TABLESPOON FRESHLY GRATED HORSERADISH+ 
2 CUPS (150G) PANKO (JAPANESE) BREADCRUMBS 
150G SPECK, FINELY CHOPPED 
200G BABY CAVOLO NERO (TUSCAN KALE) LEAVES 
SEA SALT AND CRACKED BLACK PEPPER 
COLCANNON MASH

2 MEDIUM TURNIPS (350G), PEELED AND CHOPPED 
2 MEDIUM PARSNIPS (430G), PEELED AND FINELY CHOPPED 
600G SEBAGO (STARCHY) POTATOES, PEELED AND CHOPPED 
2 CLOVES GARLIC 
¼ CUP (60ML) SINGLE (POURING) CREAM 
½ TABLESPOON FRESHLY GRATED HORSERADISH+",
  method: "To make the colcannon mash, place the turnip, parsnip, potato and garlic in a large saucepan. Cover with cold salted water and place over high heat. 
Cover and bring to the boil. Remove the lid and cook for 15–20 minutes or until the vegetables are very tender. Drain and return to the pan. Add the cream and horseradish and mash until smooth. Set aside and keep warm.
Cut the beef into 4 equal pieces and, using a meat mallet, pound to ½cm thick. Place the flour, salt and pepper in a medium bowl and mix to combine. 
Place the eggs, milk and horseradish in a separate bowl and whisk to combine. Place the breadcrumbs in a third bowl. Dust the beef with the flour, dip into the egg mixture and press into the breadcrumbs to coat. 
Heat 3cm of the oil in a large frying pan over high heat. Cook the beef in batches, turning, for 3–4 minutes or until golden and cooked through. Drain on paper towel.
While the beef is cooking, place a medium frying pan over high heat. Add the speck and cook for 4–5 minutes or until crisp. Divide the mash between serving plates, top with the speck and cavolo nero and serve with the schnitzel. Serves 4.",
  time: "20 MINS",
  images: [open('db/images/beef_and_horseradish_schnitzel_with_deconstructed_colcannon.jpg')],
    user_id: u1.id,
    category_id: c4.id 
  )

r5 = Recipe.create!(
  title: "BASIC BOLOGNESE SAUCE",
  ingredients: "2 TEASPOONS OLIVE OIL
2 CLOVES GARLIC, CHOPPED
2 ONIONS, CHOPPED 
1KG MINCED BEEF 
2 X 400G CANS TOMATO PUREE 
1 CUP (250ML) BEEF STOCK
¼ CUP CHOPPED FLAT-LEAF PARSLEY LEAVES 
EA SALT AND CRACKED BLACK PEPPER",
  method: "Heat a deep frying pan or saucepan over high heat. Add the oil, garlic and onion and cook for 3 minutes or until just soft. Add the mince and cook, stirring, until brown. 
Add the tomato puree and stock and rapidly simmer for 10–15 minutes or until thickened to your liking. 
Stir through the parsley, salt and pepper and serve over spaghetti or use as sauce in a lasagne. Serves 4.",
  time: "20 MINS",
  images: [open('db/images/bolognese_sauce.jpg')],
  user_id: u1.id,
  category_id: c4.id
  )

r6 = Recipe.create!(
  title: "BAKED CHOCOLATE FUDGE",
  ingredients: "200G DARK CHOCOLATE, CHOPPED
60G BUTTER
½ CUP (90G) BROWN SUGAR 
¼ CUP (60ML) POURING (SINGLE) CREAM 
3 EGGS 
1 TABLESPOON PLAIN (ALL-PURPOSE) FLOUR, SIFTED 
VANILLA OR COFFEE ICE-CREAM, TO SERVE",
  method: "Preheat oven to 150°C (310°F). Place the chocolate, butter, sugar and cream in a saucepan over low heat and stir until melted and smooth. 
Place the eggs and flour in a bowl and whisk to combine. Gradually whisk in the chocolate mixture and pour into six lightly greased 1 cup-capacity (250ml) ovenproof dishes. 
Place the dishes in a deep baking dish and pour in enough water to come halfway up the sides of the dishes. Bake for 45 minutes or until puffed and firm to touch. Refrigerate until cooled. Top with scoops of ice-cream to serve. Serves 4.",
  time: "20 MINS",
  images: [open('db/images/baked_chocolate_fudge.jpg')],
  user_id: u2.id,
  category_id: c3.id
  )

r7 = Recipe.create!(
  title: "APPLE CRUMBLE SEMIFREDDO",
  ingredients: "2 CUPS (340G) GRATED GRANNY SMITH (GREEN) APPLE
1 TEASPOON GROUND CINNAMON
1 TABLESPOON FINELY GRATED LEMON RIND 
1 TABLESPOON LEMON JUICE 
3 EGGS 
2 EGG YOLKS, EXTRA 
1 TEASPOON VANILLA EXTRACT 
1 CUP (220G) CASTER (SUPERFINE) SUGAR 
2 CUPS (500ML) SINGLE (POURING) CREAM 
STORE-BOUGHT WAFFLE CONES, TO SERVE

CRUMBLE

1 CUP (150G) PLAIN (ALL PURPOSE) FLOUR, SIFTED
 ⅓ CUP (75G) CASTER (SUPERFINE) SUGAR 
80G BUTTER, MELTED",
  method: "Place the apple, cinnamon, lemon rind and juice in a non-metallic bowl and toss to combine. Set aside. 
Place the eggs, extra yolks, vanilla and sugar in a heatproof bowl. Place over a saucepan of simmering water and, using a hand-held electric mixer, beat for 6–8 minutes or until thick and pale. Remove from the heat and allow to cool slightly. 
Whisk the cream until stiff peaks form. Gently fold through the egg mixture until well combined. Fold through the apple mixture until well combined. Pour into a 2 litre-capacity metal tin and freeze for 6 hours or overnight. 
Preheat oven to 180°C (355°F). To make the crumble, place the flour, sugar and butter in a bowl and mix well to combine. Spread out on a baking tray and bake for 15 minutes or until golden. Set aside to cool. Scoop semifreddo into waffle cones and coat with crumble to serve. Makes 2 litres.",
  time: "20 MINS",
  images: [open('db/images/2355_.jpg')],
  user_id: u2.id,
  category_id: c3.id
  )

r8 = Recipe.create!(
  title: "APPLE BIRCHER POPSICLES",
  ingredients: "1 GRANNY SMITH APPLE, THINLY SLICED
1 TABLESPOON LEMON JUICE 
1 CUP (250ML) UNSWEETENED ALMOND MILK 
APPLE BIRCHER

2 GRANNY SMITH APPLES, GRATED 
½ CUP (45G) ROLLED OATS 
¼ CUP (20G) SHREDDED COCONUT 
½ CUP (125ML) UNSWEETENED ALMOND MILK 
1 TABLESPOON HONEY 
½ CUP (40G) TOASTED FLAKED ALMONDS",
  method: "Place the apple and lemon juice in a medium bowl and toss to combine. 
Place 1 apple slice into each of 8 x ⅓-cup-capacity (80ml) popsicle moulds. Divide the almond milk between the moulds and freeze for 1 hour or until firm. 
To make the apple bircher, place the apple, oats, coconut, almond milk, honey and almonds in a large bowl. Set aside in the refrigerator to chill for 30 minutes until the oats are softened. 
Divide the bircher between the moulds and insert popsicle sticks. Freeze for 3–4 hours or until set. Makes 8.",
  time: "20 MINS",
  images: [open('db/images/Apple-Bircher-Popsicles.jpg')],
  user_id: u2.id,
  category_id: c3.id
  )

r9 = Recipe.create!(
  title: "ALMOND PAVLOVA STACK",
  ingredients: "150ML EGGWHITE (APPROXIMATELY 4 EGGS)
1 CUP (220G) CASTER (SUPERFINE) SUGAR
2 TABLESPOONS CORNFLOUR (CORNSTARCH), SIFTED 
2 TEASPOONS WHITE VINEGAR 
½ CUP (40G) FLAKED ALMONDS 
1 CUP (250ML) SINGLE (POURING) CREAM 
2 PEACHES, SLICED 
¼ CUP (60ML) DESSERT WINE",
  method: "Preheat oven to 150°C (300°F). Place the eggwhite in the bowl of an electric mixer and whisk until stiff peaks form. Gradually add the sugar, whisking well, until the mixture is stiff and glossy. Add the cornflour and vinegar and whisk until just combined. 
Shape the mixture into 2 x 18cm rounds on baking trays lined with non-stick baking paper and sprinkle with the almonds. Reduce oven to 120°C (250°F) and bake for 1 hour. Turn the oven off and allow the pavlovas to cool completely in the oven. 
Whisk the cream until soft peaks form. Spread half over a pavlova, sandwich with the remaining pavlova and top with remaining cream. Place the peach and dessert wine in a bowl, toss to combine and place on pavlova. Serve immediately. Serves 8–10.",
  time: "20 MINS",
  images: [open('db/images/2521_.jpg')],
  user_id: u2.id,
  category_id: c3.id
  )

r10 = Recipe.create!(
  title: "ALMOND AND PEAR TARTS",
  ingredients: "4 SHEETS FROZEN BUTTER PUFF PASTRY, THAWED
2 X 220G FIRM GREEN PEARS, PEELED, CORED AND THINLY SLICED ON A MANDOLIN
⅓ CUP (80ML) MAPLE SYRUP, PLUS EXTRA TO SERVE
50G UNSALTED BUTTER, SOFTENED
¼ CUP (55G) CASTER (SUPERFINE) SUGAR
½ TEASPOON VANILLA EXTRACT
1 EGG YOLK
⅔ CUP (80G) ALMOND MEAL
2 TABLESPOONS PLAIN FLOUR",
  method: "Preheat oven to 200°C. To make the frangipane, place the butter, sugar and vanilla in a small food processor and process for 1–2 minutesor until pale and creamy.
Add the egg yolk, almond meal and flour. Process to combine. Press 2 pastry sheets together to make 1 thick sheet. Repeat with remaining sheets.
Using an 11cm round pastry cutter, cut 6 rounds from the pastry. Place on baking trays lined with non-stick baking paper. Gently score each round using a 10cm round pastry cutter.
Spread 1½ tablespoons of the frangipane evenly onto each round and top with the pear, overlapping slightly. Brush with maple syrup and cook for 15 minutes.
Brush with maple syrup and cook for a further 5–10 minutes or until puffed and golden. Allow to cool slightly and top with maple syrup to serve. Makes 6.",
  time: "20 MINS",
  images: [open('db/images/Almond_and_pear_tarts.jpg')],
  user_id: u2.id,
  category_id: c3.id
  )

r11 = Recipe.create!(
  title: "BASIC ZUCCHINI SLICE",
  ingredients: "1 TABLESPOON OLIVE OIL
1 ONION, FINELY CHOPPED 
2 CLOVES GARLIC, CRUSHED 
4 RASHERS BACON, RIND REMOVED AND CHOPPED 
450G ZUCCHINI (COURGETTE), GRATED 
200G FETA, CRUMBLED 
200G RICOTTA 
½ CUP (40G) FINELY GRATED PARMESAN 
¼ CUP CHOPPED CHIVES
SEA SALT AND CRACKED BLACK PEPPER 
6 EGGS 
1 CUP (150G) SELF RAISING (SELF-RISING) FLOUR, SIFTED",
  method: "Preheat oven to 180°C (350°F).
Heat the oil in a large non-stick frying pan over high heat. Add the onion, garlic and bacon and cook for 5 minutes or until light golden. Place in a bowl with the zucchini, feta, ricotta, parmesan, chives, salt and pepper and mix to combine. 
Place the eggs and flour in a bowl and mix well to combine. Add to the zucchini and mix to combine. 
Spoon into a lightly greased 20cm x 30cm tin lined with non-stick baking paper and smooth with a palette knife. Bake for 40–45 minutes or until golden and cooked through. Cut into slices to serve. Serves 8–10.",
  time: "20 MINS",
  images: [open('db/images/zuchinni_slice.jpg')],
  user_id: u3.id,
  category_id: c2.id
  )

r12 = Recipe.create!(
  title: "BARBECUED CORN

with a trio of butters",
  ingredients: "6 CORNCOBS, HUSKS PULLED BACK AND TIED
HARISSA AND TOMATO BUTTER

100G UNSALTED BUTTER, SOFTENED 
2 TEASPOONS HARISSA PASTE 
1 TEASPOON TOMATO PASTE 
1 TEASPOON FINELY GRATED LEMON RIND 
SEA SALT AND CRACKED BLACK PEPPER
PESTO BUTTER

100G UNSALTED BUTTER, SOFTENED 
¼ CUP (65G) STORE-BOUGHT PESTO 
FINELY GRATED PARMESAN, TO SERVE
NORI AND JAPANESE MAYONNAISE BUTTER


100G UNSALTED BUTTER, SOFTENED 
1 SHEET NORI (DRIED SEAWEED), CHOPPED 
¼ CUP (75G) JAPANESE MAYONNAIS",
  method: "Preheat a char-grill pan or barbecue to high heat. To make the harissa and tomato butter, place the butter, harissa, tomato paste, lemon, salt and pepper in a small food processor and process until smooth and combined. Set aside. 
To make the pesto butter, place the butter and pesto in a small bowl and mix to combine. Set aside. 
To make the nori and Japanese mayonnaise butter, place the butter and nori in a small food processor and process until the nori is finely chopped. Add the mayonnaise and pulse to combine. 
Cook the corn for 15–18 minutes, turning, or until charred. Spread 2 corncobs with the harissa and tomato butter, 2 corncobs with the pesto butter and 2 corncobs with the nori and Japanese mayonnaise butter. Top the pesto butter corncobs with parmesan. 
Sprinkle with pepper and serve the corncobs with the remaining butters. Makes 6.",
  time: "20 MINS",
  images: [open('db/images/Barbecued-corn-with-trio-of-butters.jpg')],
  user_id: u3.id,
  category_id: c2.id
  )

r13 = Recipe.create!(
  title: "AVOCADO HUMMUS WITH DUKKAH

and toasted flatbreads",
  ingredients: "2 AVOCADOS
400G CAN CHICKPEAS, DRAINED AND RINSED 
1 TABLESPOON TAHINI 
1 CLOVE GARLIC, CRUSHED 
2 TABLESPOONS 
LEMON JUICE 
SEA SALT AND CRACKED BLACK PEPPER 
6 SMALL WHOLEMEAL FLATBREADS, TOASTED
¼ CUP (35G) STORE-BOUGHT DUKKAH, FOR SPRINKLING 
EXTRA VIRGIN OLIVE OIL, TO SERVE 
LEMON WEDGES, TO SERVE",
  method: "Place the avocado, chickpeas, tahini, garlic, lemon juice, salt and pepper in a food processor and process until smooth. 
Spoon the avocado hummus onto each flatbread, sprinkle with the dukkah and drizzle with oil. Serve with lemon wedges. Serves 4–6.",
  time: "20 MINS",
  images: [open('db/images/avocado_hummus_dukka_flatbread.jpg')],
  user_id: u3.id,
  category_id: c2.id
  )

r14 = Recipe.create!(
  title: "AVOCADO AND CHAR-GRILLED CORN ON RYE TOAST",
  ingredients: "2 CORNCOBS, HUSKS REMOVED
2 LIMES, HALVED 
¼ CUP CORIANDER LEAVES, ROUGHLY CHOPPED 
1 LONG RED CHILLI, SEEDS REMOVED AND FINELY CHOPPED 
SEA SALT AND CRACKED BLACK PEPPER 
4 SLICES RYE BREAD, TOASTED 
1 AVOCADO, CUT INTO WEDGES 
¼ CUP (60ML) BUTTERMILK, TO SERVE",
  method: "Place a char-grill pan over high heat. Cook  the corn, turning, for 8–10 minutes or until lightly charred. 
Add the lime halves and cook, cut-side down, for 1–2 minutes or until lightly charred. Slice the kernels off the cob and place in a bowl. Add the coriander, chilli, salt and pepper and toss to combine. 
Top the toast with the avocado and corn mixture and drizzle with buttermilk. Serve with grilled limes. Serves 4.",
  time: "20 MINS",
  images: [open('db/images/smashed_avocado_corn_lime_coriander_buttermilk.jpg')],
  user_id: u3.id,
  category_id: c2.id
  )

r15 = Recipe.create!(
  title: "ARANCINI MEATBALLS",
  ingredients: "¾ CUP (50G) FRESH WHITE BREADCRUMBS
¼ CUP (60ML) MILK
500G VEAL MINCE
1 EGG
2 CLOVES GARLIC,
CRUSHED
½ CUP (40G) FINELY GRATED PARMESAN
1 TABLESPOON EXTRA VIRGIN OLIVE OIL
SEA SALT AND CRACKED BLACK PEPPER
30 X CHERRY BOCCONCINI, DRAINED AND WELL DRIED WITH ABSORBENT PAPER
¼ CUP (35G) PLAIN (ALL-PURPOSE) FLOUR, FOR DUSTING
3 EGGS, LIGHTLY BEATEN, EXTRA
3 CUPS (210G) FRESH WHITE BREADCRUMBS, EXTRA
VEGETABLE OIL, FOR DEEP FRYING
STORE-BOUGHT PESTO AND AÏOLI TO SERVE",
  method: "Place the breadcrumbs and milk in a large bowl and mix well to combine. Set aside for 5 minutes or until the milk is absorbed. 
Add the mince, egg, garlic, parmesan, oil, salt and pepper and mix well to combine. Using wet hands, divide the mixture into tablespoons, place a bocconcini in the middle of each and roll into balls to enclose. 
Toss the meatballs in the flour, dip into the extra egg and roll in the extra breadcrumbs to coat. 
Heat the vegetable oil in a large saucepan over medium heat until the temperature reaches 180°C (350°F) on a deep-frying thermometer. Carefully lower the meatballs, in batches, into the oil and cook for 5–6 minutes or until golden and cooked through. 
Serve the meatballs with the pesto and aïoli. Makes 30.",
  time: "40 MINS",
  images: [open('db/images/Arancini_meatballs.jpg')],
  user_id: u3.id,
  category_id: c2.id
  )

r16 = Recipe.create!(
  title: "BACON AND ROSEMARY ROASTED LAMB",
  ingredients: "2 TABLESPOONS CHOPPED ROSEMARY LEAVES
2 CLOVES GARLIC, CRUSHED
1 TEASPOON SEA SALT FLAKES 
2 TABLESPOONS OLIVE OIL 
1 TABLESPOON LEMON JUICE 
1 X 1.3KG EASY-CARVE LAMB LEG 
12 SLICES STREAKY BACON+ OR PANCETTA 
1.25 LITRES CHICKEN STOCK 
1 CUP (170G) INSTANT POLENTA 
¼ CUP (60ML) SINGLE (POURING) CREAM 
50G BUTTER",
  method: "Preheat oven to 200°C (390°F). Place the rosemary, garlic, salt, oil and lemon juice in a bowl and stir to combine. Place 1 tablespoon of the rosemary mixture in the centre of the lamb leg. With a small, sharp knife make shallow slits in the lamb leg and spread the remaining rosemary mixture over, pressing it into the slits. 
Wrap the bacon around the lamb and secure with kitchen string. Place the lamb on a wire rack in a baking dish. Add 2 cups (500ml) of stock to the baking dish and roast for 1–1¼ hours for medium or until cooked to your liking.
Place remaining stock in a saucepan over high heat and bring to the boil. Gradually add the polenta, whisking continuously. Cook for 2–5 minutes or until thickened. Stir through the cream and butter. Slice the lamb and serve with the polenta. Serves 4.",
  time: "120 MINS",
  images: [open('db/images/bacon_and_rosemary_roasted_lamb_.jpg')],
  user_id: u4.id,
  category_id: c1.id
  )
r17 = Recipe.create!(
  title: "APPLE HERBBRINED TURKEY ROSEMARY GRAVY",
  ingredients: "2 LITRES APPLE JUICE
1 LEMON, SLICED 
2 FRESH BAY LEAVES 
6 SPRIGS ROSEMARY 
1 TABLESPOON FENNEL SEEDS 
1 HEAD GARLIC, HALVED 
1½ CUPS (375G) TABLE SALT 
2 CUPS (500ML) APPLE CIDER 
1 CUP (250ML) APPLE CIDER VINEGAR 
4 LITRES WATER 
1 X 5KG TURKEY, RINSED
EXTRA VIRGIN OLIVE OIL, FOR BRUSHING 
CRACKED BLACK PEPPER 
2 CUPS (500ML) WATER, EXTRA 
APPLE AND ROSEMARY GRAVY

2 TABLESPOONS PLAIN (ALL-PURPOSE) FLOUR 
1 CUP (250ML) APPLE JUICE 
1 CUP (250ML) WATER 
1 TABLESPOON DIJON MUSTARD 
1 SPRIG ROSEMARY",
  method: "To make the brine, place the apple juice, lemon, bay leaves, rosemary, fennel seeds, garlic and salt in a large saucepan over high heat. Bring to the boil, stirring to dissolve the salt. Remove the lemon, herbs and garlic and set aside. pour the brining liquid into a large (10-litre-capacity) non-reactive container+. Add the cider, vinegar and water and stir to combine. Place the reserved lemon, herbs and garlic into the cavity of the turkey. Tie the legs with kitchen string and tuck the wings underneath. Place the turkey, breast-side down, in the brining liquid. Cover and refrigerate for 12 hours (but no longer). Remove the turkey from the container, discarding the brining liquid, and place on a lightly greased wire rack over a deep-sided baking dish. 
Preheat oven to 180°C (350°F). Pat the turkey dry and brush with the oil, sprinkle with pepper and pour the extra water into the dish. Cover with lightly greased aluminium foil and roast for 1 hour. Uncover and roast for a further 1 hour 30 minutes or until the skin is golden and the juices run clear when tested with a skewer. Reserving the pan juices, carefully place the turkey on a tray, cover with foil and allow to rest for 20 minutes. 
While the turkey is resting, make the apple and rosemary gravy. Strain the pan juices into a small bowl. Skim the fat from the surface, reserving 1 tablespoon. Heat the reserved fat in a medium saucepan over medium heat. Add the flour and stir for 3–4 minutes or until golden. Gradually whisk in the apple juice and water. Add the pan juices, mustard, rosemary, salt and pepper. Stir for 4–5 minutes or until the mixture boils and thickens. Slice the turkey and serve with the gravy. Serves 8.
",
  time: "120 MINS",
  images: [open('db/images/apple_herbbrined_turkey_rosemary_gravy.jpg')],
  user_id: u4.id,
  category_id: c1.id
  )

r18 = Recipe.create!(
  title: "APPLE FIG SALAD GOATS CURD",
  ingredients: "125G GOAT’S CURD
¼ CUP (60G) CRÈME FRAÎCHE 
2 TABLESPOONS LEMON JUICE 
1 TABLESPOON WATER 
SEA SALT AND CRACKED BLACK PEPPER 
2 PINK LADY APPLES, THINLY SLICED 
2 GRANNY SMITH APPLES, THINLY SLICED 
6 FIGS, HALVED 
½ CUP (50G) WALNUTS, TOASTED AND ROUGHLY CHOPPED 
BABY (MICRO) BASIL, TO SERVE",
  method: "Place the goat’s curd, crème fraîche, lemon juice, water, salt and pepper in bowl and whisk until smooth. Set aside. 
Arrange the apples and figs on a serving dish. Sprinkle with the walnuts and the baby basil. Serve with the goat’s curd dressing. Serves 4–6.",
  time: "20 MINS",
  images: [open('db/images/apple_fig_salad_goats_curd.jpg')],
  user_id: u4.id,
  category_id: c1.id
  )

r19 = Recipe.create!(
  title: "ARTICHOKE, PESTO AND BRIE TARTS",
  ingredients: "1 SHEET FROZEN BUTTER PUFF PASTRY+, THAWED 
100G BRIE, TORN  
4 MARINATED ARTICHOKES, HALVED  
SEA SALT AND CRACKED BLACK PEPPER 
1 EGG, LIGHTLY BEATEN  
1 TABLESPOON STORE-BOUGHT PESTO, TO SERVE",
  method: "Preheat oven to 200°C (400°F). Place the pastry on a baking tray lined with non-stick baking paper. Lightly prick the pastry with a fork and, using a knife, gently score a 2.5cm border around the edge. 
Top the pastry with the brie and artichokes and sprinkle with salt and pepper. Lightly brush the edges with the egg and bake for 20 minutes or until golden and cooked through. Drizzle with the pesto to serve. Serves 4.",
  time: "30 MINS",
  images: [open('db/images/artichoke_pesto_brie_tart.jpg')],
  user_id: u4.id,
  category_id: c1.id
  )

r20 = Recipe.create!(
  title: "ASIAN-STYLE CHILLI CHICKEN NACHOS",
  ingredients: "1 X STORE-BOUGHT BARBECUE CHICKEN, SKIN REMOVED AND SHREDDED 
¼ CUP (80G) ASIAN CHILLI JAM 
¼ CUP (60ML) LIME JUICE 
½ CUP (150G) WHOLE-EGG MAYONNAISE 
SEA SALT AND CRACKED BLACK PEPPER 
6 CUPS (210G) STORE-BOUGHT SEEDED CORN CHIPS+ 
½ SMALL ICEBERG LETTUCE (250G), SHREDDED 
1 SMALL CUCUMBER, THINLY SLICED 
1 CARROT, SHREDDED 
2 GREEN ONIONS, THINLY SLICED 
1 LONG RED CHILLI, THINLY SLICED 
CORIANDER LEAVES, TO SERVE",
  method: "Place the chicken, chilli jam and 2 tablespoons of the lime juice in a bowl and mix to combine. Set aside. 
Place the mayonnaise, remaining lime juice, salt and pepper in small bowl and mix to combine. 
Divide the chips between plates, top  with the chicken, lettuce, cucumber, carrot, green onions, chilli and coriander and serve with the lime mayonnaise. Serves 4.",
  time: "20 MINS",
  images: [open('db/images/asian_chilli_chicken_nachos_coriander.jpg')],
  user_id: u4.id,
  category_id: c1.id
  )













































