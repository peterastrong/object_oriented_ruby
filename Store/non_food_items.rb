require_relative "item_module.rb"

module StoreFront
  class NonFoodItems  
  include ItemLocation
    attr_reader :item_name, :version, :price
    attr_writer :price 

    def initialize(hash_input) 
      @item_name = hash_input[:item_name]
      @version = hash_input[:version]
      @price = hash_input[:price]
    end 

  end
end 