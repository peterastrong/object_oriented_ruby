# item1 = {name: "lego", version: "batman's cave", price: 34.99}
# item1 = {name: "Brio", version: "zoo train", price: 12.55}
# item3 = {:name => "doll", :version => "Dora", :price => 15.99}

class StoreItem  

  attr_reader :toy_name, :version, :price
  attr_writer :price 

  def initialize (toy_name, version, price) 
    @toy_name = toy_name
    @version = version
    @price = price
  end 

end

store_item1 = StoreItem.new("Lego", "Batman's Cave", 34.99)

puts store_item1.toy_name
puts store_item1.version
puts store_item1.price

