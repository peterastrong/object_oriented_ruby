require "./non_food_items.rb"
require_relative "item_module.rb"

module StoreFront
  class Food < NonFoodItems 
    include ItemLocation
    attr_accessor :shelf_life
    
    def initialize(hash_input)
      super
      @shelf_life = hash_input[:shelf_life] 
    end 

  end
end  