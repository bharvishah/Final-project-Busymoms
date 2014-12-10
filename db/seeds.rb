# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# photo: 'healthier-vegetarian-lasagna.jpg',
# photo: 'spinach-enchiladas.jpg',
# photo: "mexicanrice.jpg",
# photo: "springroll.jpg",



veggie_lasagna = Recipe.create(name: 'Vegetarian Lasagna',cooking_time: '50 mins', serving_size: 4, category: 'Main Course', cuisine: 'Italian',
method: 'Bring large pot of water to a boil. While water is heating up, mix the ricotta, roasted garlic, spinach, artichoke hearts, dried parsley, red pepper flakes, black pepper and 1/4 cup parmesan cheese together in a large bowl.Pour 1 tablespoon of olive oil in the boiling water before adding the pasta.
Cook the pasta a few minutes or until about halfway cooked, then drain.Drizzle the remaining tablespoon of olive oil in a large rectangular glass pan. Layer a little bit of the pasta sauce on the bottom of the pan. Layer 1/3 of the pasta noodles in the pan.Layer a little more pasta sauce on top of the noodles.
Take 1/2 of the ricotta mixture and drop evenly over the noodles and sauce in the pan.Top the ricotta with 1/3 of the jack cheese and 1/3 of the mozzarella.Layer another 1/3 of the noodles in the pan with more sauce on top.Finish dropping the rest of the ricotta mixture over the lasagna.
Top with 1/3 of the jack cheese and 1/3 of the mozzarella. Use the rest of the noodles and top with the rest of the sauce.Sprinkle the top of the lasagna with the remaining parmesan, jack, and mozzarella cheeses.Bake in a 375 degree oven until hot, golden and bubbly, making sure the noodles are cooked through -about 40 minutes.Top with fresh basil before serving')

veggie_lasagna.ingredients.create(name:'Lasagna Noodles', qty: "1 package", style: 'not no-boil')
veggie_lasagna.ingredients.create(qty: "2 tbsp", name: 'Olive Oil', style: 'divided')
veggie_lasagna.ingredients.create(qty: "1/2 jar", name: 'Tomato Basil Pasta Sause', style: '')
veggie_lasagna.ingredients.create(qty:"1 16-oz container" , name: 'Ricotta Cheese', style: 'part skim')
veggie_lasagna.ingredients.create(qty: "10 cloves", name: 'Garlic', style: 'roasted and chopped')
veggie_lasagna.ingredients.create(qty: "4 handful", name: 'Spinach', style: 'chopped')
veggie_lasagna.ingredients.create(qty: "1 15-oz jar",name: 'Artichoke hearts', style: 'drained, rough chopped')
veggie_lasagna.ingredients.create(qty: "1/2 tsp", name: 'Parsley', style: 'dried')
veggie_lasagna.ingredients.create(qty: "1/2 tsp", name: 'Red pepper', style: 'flakes')
veggie_lasagna.ingredients.create(qty: "1/2 tsp" , name: 'Black pepper', style: 'ground')
veggie_lasagna.ingredients.create(qty: "3/4 cup" , name: 'Parmesan Cheese', style: 'shredded')
veggie_lasagna.ingredients.create(qty: "6 oz" , name: 'Monterey jack cheese', style: 'reduced fat and grated')
veggie_lasagna.ingredients.create(qty: "6 oz", name: 'Mozarella cheese', style: 'part skim and grated')
veggie_lasagna.ingredients.create(qty: "1/4 cup", name: 'basil', style: 'fresh chopped')

spinach_enchilada = Recipe.create(name: 'Spinach Enchilada',cooking_time: '45 mins', serving_size: 5, category: 'Main Course', cuisine: 'Mexican',
method: 'Preheat the oven to 375 degrees F (190 degrees C). Melt butter in a saucepan over medium heat. Add garlic and onion; cook for a few minutes until fragrant, but not brown. Stir in spinach, and cook for about 5 more minutes. Remove from the heat, and mix in ricotta cheese, sour cream, and 1 cup of Monterey Jack cheese.
In a skillet over medium heat, warm tortillas one at a time until flexible, about 15 seconds. Spoon about 1/4 cup of the spinach mixture onto the center of each tortilla. Roll up, and place seam side down in a 9x13 inch baking dish. Pour enchilada sauce over the top, and sprinkle with the remaining cup of Monterey Jack.
Bake for 15 to 20 minutes in the preheated oven, until sauce is bubbling and cheese is lightly browned at the edges.')

spinach_enchilada.ingredients.create(qty: "1 tbsp", name: 'Butter', style: '')
spinach_enchilada.ingredients.create(qty: "1/2 cup", name: 'Green onion', style: '')
spinach_enchilada.ingredients.create(qty: "2 cloves", name: 'Garlic', style: '')
spinach_enchilada.ingredients.create(qty: "10 oz", name: 'Spinach', style: '')
spinach_enchilada.ingredients.create(qty: "1 cup",name: 'Ricotta cheese', style: '')
spinach_enchilada.ingredients.create(qty: "1/2 cup", name: 'Yogurt', style: 'greek')
spinach_enchilada.ingredients.create(qty: "2 cups", name: 'Monterey Jack Cheese', style: 'shredded')
spinach_enchilada.ingredients.create(qty: "8", name: 'Tortilla', style: '')
spinach_enchilada.ingredients.create(qty: "1 can", name: 'Enchilada sauce', style: '')

mexican_rice = Recipe.create(name: "Mexican Rice", cooking_time: "40 min",
method: "1-\tIn a large pan add oil\r\n\r\n2-\tAdd onion – bell pepper – tomato-garlc – salt &pepper and cilantro\r\n\r\n3-\tStir – then add water\r\n\r\n4-\tAdd rice\r\n\r\n5-\tLower heat and let it cook.",
 serving_size: 4, category: "Main course", cuisine: "Mexican")


mexican_rice.ingredients.create(name: "Vegetable oil", qty: "2 tbsp", style: "")
mexican_rice.ingredients.create(name: "Rice", qty: "1 cup", style: "")
mexican_rice.ingredients.create(name: "Onion", qty: "1 large", style: "minced")
mexican_rice.ingredients.create(name: "Cilantro", qty: "1/2 bunch", style: "minced")
mexican_rice.ingredients.create(name: "Green bell pepper", qty: "1/2 cup", style: "minced")
mexican_rice.ingredients.create(name: "Water", qty: "2 cup", style: "")
mexican_rice.ingredients.create(name: "Tomato and pepper", qty: "2 cups", style: "")
mexican_rice.ingredients.create(name: "hot pepper", qty: "2 tsp", style: "")
mexican_rice.ingredients.create(name: "salt", qty: "1 tsp", style: "")
mexican_rice.ingredients.create(name: "Paprika", qty: "1 tsp", style: "")
mexican_rice.ingredients.create(name: "Garlic Cloves", qty: "4", style: "minced")

spring_roll=Recipe.create(name: "Chinese spring rolls",cooking_time: "1 hour", method: "1. In a large bowl, combine the soy sauce, wine, pepper and cornstarch. Add in the chicken and mix well. Let marinate for 10 minutes (or up to overnight in the refrigerator).\r\n\r\n2. Heat a wok or large saute pan over high heat. When hot, swirl in just 1 tablespoon of the cooking oil. Stir fry the ground chicken until browned. Remove browned ground chicken from wok to a bowl and set aside.\r\n\r\n3. Wipe the wok clean and turn heat to medium. When just starting to get hot, swirl in the remaining cooking oil. Add in the green onion, garlic and ginger and cook for 30 seconds. Take care not to burn these aromatics. Add in the carrots and cabbage. Stir well and turn the heat to medium-high. Stir fry the vegetables for 2 minutes, or until the carrots have softened. Add the cooked chicken back into the wok, stir well. Add in the oyster sauce and toss again. Spread the mixture out on a baking sheet to let cool. Prop up the baking sheet on one end so that any liquid collects on the other side. When the mixture is cool, discard the liquid.\r\n\r\n4. In a small bowl, whisk together the cornstarch and water. This is your slurry. Open the egg roll wrapper package, cover with barely damp towel to prevent drying out.\r\n\r\n5. Add 1 tablespoon of filling to egg roll (see photos for instructions) and roll up. Secure with cornstarch slurry. Keep rolled egg rolls covered with plastic wrap to prevent drying.\r\n\r\n6. When ready to fry, heat 1 1/2\" of oil in a wok or deep, heavy skillet to 350F (see tip in photos if you don't have thermometer). Carefully slide in the egg rolls, a few at a time, to the oil to fry. Turn the egg rolls occassionally to brown evenly and fry for about 3 minutes. Let cool on rack. Repeat with remaining.", serving_size: 50, category: "starter", cuisine: "chinese")


spring_roll.ingredients.create(name: "Soy Sauce", qty: "1tsp", style: "")
spring_roll.ingredients.create(name: "Rice wine", qty: "t tsp", style: "")
spring_roll.ingredients.create(name: "Corn starch", qty: "1 tsp", style: "")
spring_roll.ingredients.create(name: "black pepper", qty: "1 tsp", style: "ground")
spring_roll.ingredients.create(name: "chicken", qty: "1 lb", style: "ground")
spring_roll.ingredients.create(name: "cooking oil", qty: "2 tsp", style: "")
spring_roll.ingredients.create(name: "garlic", qty: "2 cloves", style: "minced")
spring_roll.ingredients.create(name: "fresh ginger", qty: "1 tsp", style: "grated")
spring_roll.ingredients.create(name: "green onion", qty: "1 stalk", style: "chopped")
spring_roll.ingredients.create(name: "Cabbage", qty: "8 ounces", style: "shredded")
spring_roll.ingredients.create(name: "Carrots", qty: "2 ounces", style: "shredded")
spring_roll.ingredients.create(name: "spring roll wrappers", qty: "50", style: "")
