require "./non_food_items.rb"
require_relative "food.rb"
require_relative "item_module.rb"

nonfooditem1 = StoreFront::NonFoodItems.new(item_name: "Lego", version: "Batman's Cave", price: 34.99)
nonfooditem2 = StoreFront::NonFoodItems.new(item_name: "Brio", version: "zoo train", price: 12.55)
nonfooditem3 = StoreFront::NonFoodItems.new(item_name: "doll", version: "Dora", price: 15.99)

food = StoreFront::Food.new(item_name: "cheese", version: "blue", price: 3.44, shelf_life: 4 )

nonfooditem1.front_of_store
food.back_of_store
