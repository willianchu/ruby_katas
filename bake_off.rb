def chooseRecipe(bakeryA, bakeryB, recipes)
  found = false
  recipe_name = ""
  recipes.each do |recipe|
    recipe["ingredients"].each do |ingredient|
      if ingrient.include?(bakeryA) || ingrient.include?(bakeryB)
        found = true
        recipe_name = recipe["name"]
      else
        found = false

      end
    end
  end
  recipe_name
end


bakeryA = ['saffron', 'eggs', 'tomato paste', 'coconut', 'custard']
bakeryB = ['milk', 'butter', 'cream cheese']
#list of hashes
recipes = [
  { 
    "name": "Coconut Sponge Cake",
    "ingredients": ["coconut", "cake base"]
  },
  {
    "name": "Persian Cheesecake",
    "ingrients": ["saffron", "cream cheese"]
  },
  {
    "name": "Custard Surprise",
    "ingredients": ["custard", "ground beef"]
  }
]

puts chooseRecipe(bakeryA, bakeryB, recipes)

bakeryA = ['potatoes', 'bay leaf', 'raisins']
bakeryB = ['red bean', 'dijon mustard', 'apples']

recipes = [
  {
    "name": "Potato Ganache",
    "ingredients": ["potatoes", "chocolate"]
  },
  {
    "name": "Sweet Fish",
  },
  {
    "name": "Nima's Famous Dijon Raisins",
    "ingredients": ["dijon mustard", "raisins"]
  }
]

puts chooseRecipe(bakeryA, bakeryB, recipes)
