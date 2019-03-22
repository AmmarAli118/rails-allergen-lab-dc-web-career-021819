# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Ingredient.delete_all
Recipe.delete_all
Allergy.delete_all
RecipeIngredient.delete_all


zach = User.create(username: "Zach")
ammar = User.create(username: "Ammar")
mickey = User.create(username: "Mickey")

peanuts = Ingredient.create(name: "Peanuts")
milk = Ingredient.create(name: "Milk")
sugar = Ingredient.create(name: "Sugar")
flour = Ingredient.create(name: "Flour")
chocolate = Ingredient.create(name: "Chocolate")

cookies = Recipe.create(name:"Cookies", user: zach)
brownies = Recipe.create(name:"Brownies", user: ammar)
cupcakes = Recipe.create(name:"Cupcakes", user: mickey)
chocolate_fudge = Recipe.create(name:"Chocolate Fudge", user: zach)
oatmeal_cookies = Recipe.create(name:"Oatmeal Cookies", user: ammar)

peanut_allergy_Z = Allergy.create(user: zach, ingredient: peanuts)
peanut_allergy_M = Allergy.create(user: mickey, ingredient: peanuts)
sugar_allergy = Allergy.create(user: ammar, ingredient: sugar)


peanut_cookie = RecipeIngredient.create(recipe: cookies, ingredient: peanuts)
brownies_sugar = RecipeIngredient.create(recipe: brownies, ingredient: sugar)
cupcakes_sugar = RecipeIngredient.create(recipe: cupcakes, ingredient: sugar)
chocolate_fudge_flour = RecipeIngredient.create(recipe: chocolate_fudge, ingredient: flour)
chocolate_fudge_chocolate = RecipeIngredient.create(recipe: chocolate_fudge, ingredient: chocolate)
oatmeal_cookies_milk = RecipeIngredient.create(recipe: oatmeal_cookies, ingredient: milk)
