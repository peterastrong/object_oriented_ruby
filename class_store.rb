class StoreItem  

  attr_reader :item_name, :version, :price
  attr_writer :price 

  def initialize (hash_input) 
    @item_name = hash_input[:item_name]
    @version = hash_input[:version]
    @price = hash_input[:price]
  end 

end

store_item1 = StoreItem.new(item_name: "Lego", version: "Batman's Cave", price: 34.99)
store_item2 = StoreItem.new(item_name: "Brio", version: "zoo train", price: 12.55)
store_item3 = StoreItem.new(item_name: "doll", version: "Dora", price: 15.99)

class Food < StoreItem
  attr_accessor :shelf_life
  
  def initialize (hash_input)
    super
    @shelf_life = hash_input[:shelf_life] 
  end 

end 

food = Food.new(item_name: "cheese", version: "blue", price: 3.44, shelf_life: 4 )
p food
