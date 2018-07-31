require "json"
require "open-uri"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
uri = URI.parse(url)
ingredients = uri.open.read
json_ingredients = JSON.parse(ingredients)
ingredients_data = json_ingredients["drinks"]

ingredients_data.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
