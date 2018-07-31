require "json"
require "open-uri"

Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
uri = URI.parse(url)
ingredients = uri.open.read
json_ingredients = JSON.parse(ingredients)
ingredients_data = json_ingredients["drinks"]

ingredients_data.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Cocktail.destroy_all

Cocktail.create(name: "Long Island Ice Tea")
Cocktail.create(name: "klnasknl")
Cocktail.create(name: "sjdh")
Cocktail.create(name: "gin tonic")
Cocktail.create(name: "bloddy mary")
