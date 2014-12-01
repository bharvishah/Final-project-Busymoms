# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

veggie_lasagna = Recipe.create(name: 'Vegetarian Lasagna',photo: 'http://mda.bigoven.com/pics/healthier-vegetarian-lasagna.jpg', cooking_time: '50 mins', serving_size: 4, category: 'Main Course', cuisine: 'Italian',
                              method: 'Bring large pot of water to a boil. While water is heating up, mix the ricotta, roasted garlic, spinach, artichoke hearts, dried parsley, red pepper flakes, black pepper and 1/4 cup parmesan cheese together in a large bowl.Pour 1 tablespoon of olive oil in the boiling water before adding the pasta.
                                        Cook the pasta a few minutes or until about halfway cooked, then drain.Drizzle the remaining tablespoon of olive oil in a large rectangular glass pan. Layer a little bit of the pasta sauce on the bottom of the pan. Layer 1/3 of the pasta noodles in the pan.Layer a little more pasta sauce on top of the noodles.
                                        Take 1/2 of the ricotta mixture and drop evenly over the noodles and sauce in the pan.Top the ricotta with 1/3 of the jack cheese and 1/3 of the mozzarella.Layer another 1/3 of the noodles in the pan with more sauce on top.Finish dropping the rest of the ricotta mixture over the lasagna.
                                        Top with 1/3 of the jack cheese and 1/3 of the mozzarella. Use the rest of the noodles and top with the rest of the sauce.Sprinkle the top of the lasagna with the remaining parmesan, jack, and mozzarella cheeses.Bake in a 375 degree oven until hot, golden and bubbly, making sure the noodles are cooked through -about 40 minutes.Top with fresh basil before serving')

lasagna_noodles = veggie_lasagna.ingredients.create(name:'Lasagna Noodles', qty: "1 package", style: 'not no-boil')
olive_oil = veggie_lasagna.ingredients.create(qty: "2 tbsp", name: 'Olive Oil', style: 'divided')
tomato = veggie_lasagna.ingredients.create(qty: "1/2 jar", name: 'Tomato Basil Pasta Sause', style: '')
ricotta_cheese = veggie_lasagna.ingredients.create(qty:"1 16-oz container" , name: 'Ricotta Cheese', style: 'part skim')
garlic = veggie_lasagna.ingredients.create(qty: "10 cloves", name: 'Garlic', style: 'roasted and chopped')
spinach = veggie_lasagna.ingredients.create(qty: "4 handful", name: 'Spinach', style: 'chopped')
artichoke = veggie_lasagna.ingredients.create(qty: "1 15-oz jar",name: 'Artichoke hearts', style: 'drained, rough chopped')
parsley = veggie_lasagna.ingredients.create(qty: "1/2 tsp", name: 'Parsley', style: 'dried')
red_pepper = veggie_lasagna.ingredients.create(qty: "1/2 tsp", name: 'Red pepper', style: 'flakes')
black_pepper = veggie_lasagna.ingredients.create(qty: "1/2 tsp" , name: 'Black pepper', style: 'ground')
cheese = veggie_lasagna.ingredients.create(qty: "3/4 cup" , name: 'Parmesan Cheese', style: 'shredded')
montrey_jack = veggie_lasagna.ingredients.create(qty: "6 oz" , name: 'Monterey jack cheese', style: 'reduced fat and grated')
mozzarella = veggie_lasagna.ingredients.create(qty: "6 oz", name: 'Mozarella cheese', style: 'part skim and grated')
basil =  veggie_lasagna.ingredients.create(qty: "1/4 cup", name: 'basil', style: 'fresh chopped')

spinach_enchilada = Recipe.create(name: 'Spinach Enchilada', photo: 'http://mda.bigoven.com/pics/rs/256/spinach-enchiladas.jpg', cooking_time: '45 mins', serving_size: 5, category: 'Main Course', cuisine: 'Mexican',
                                      method: 'Preheat the oven to 375 degrees F (190 degrees C). Melt butter in a saucepan over medium heat. Add garlic and onion; cook for a few minutes until fragrant, but not brown. Stir in spinach, and cook for about 5 more minutes. Remove from the heat, and mix in ricotta cheese, sour cream, and 1 cup of Monterey Jack cheese.
                                              In a skillet over medium heat, warm tortillas one at a time until flexible, about 15 seconds. Spoon about 1/4 cup of the spinach mixture onto the center of each tortilla. Roll up, and place seam side down in a 9x13 inch baking dish. Pour enchilada sauce over the top, and sprinkle with the remaining cup of Monterey Jack.
                                              Bake for 15 to 20 minutes in the preheated oven, until sauce is bubbling and cheese is lightly browned at the edges.')

butter = spinach_enchilada.ingredients.create(qty: "1 tbsp", name: 'Butter', style: '')
green_onions = spinach_enchilada.ingredients.create(qty: "1/2 cup", name: 'Green onion', style: '')
garlic = spinach_enchilada.ingredients.create(qty: "2 cloves", name: 'Garlic', style: '')
spinach = spinach_enchilada.ingredients.create(qty: "10 oz", name: 'Spinach', style: '')
ricotta_cheese = spinach_enchilada.ingredients.create(qty: "1 cup",name: 'Ricotta cheese', style: '')
yogurt = spinach_enchilada.ingredients.create(qty: "1/2 cup", name: 'Yogurt', style: 'greek')
cheese = spinach_enchilada.ingredients.create(qty: "2 cups", name: 'Monterey Jack Cheese', style: 'shredded')
tortilla = spinach_enchilada.ingredients.create(qty: "8", name: 'Tortilla', style: '')
enchilada_sause = spinach_enchilada.ingredients.create(qty: "1 can", name: 'Enchilada sause', style: '')
