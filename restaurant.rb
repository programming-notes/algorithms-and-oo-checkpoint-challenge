class Recipe
  # I need to finish this before I give Bernie the program...

end

class RecipeBook
  def initialize
    @recipes = []
  end

  def load_recipes(filename)
    # I need to finish this before I give Bernie the program...

    # The CSV file looks like this:
    # "id", "name", "description", "ingredients", "directions"

  end

  def find_recipe_by_id(recipe_id)
    recipes = []
    @recipes.each do |recipe|
      recipes << recipe if recipe.id == recipe_id
    end

    raise "Can't find a recipe with an id of #{recipe_id.inspect}" unless recipe
    recipes
  end
end




if ARGV.any?

  # I wonder if I could clean this up...
  recipe_book = RecipeBook.new
  recipe_book.load_recipes("recipes.csv")

  if ARGV[0] == "list"
    raise "TODO: implement listing of recipes"
  elsif ARGV[0] == "display"
    puts recipe_book.find_recipe_by_id(ARGV[1])
  end
end
