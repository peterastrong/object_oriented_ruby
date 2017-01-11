class Vehicle 
 
  def initialize(input_hash)
    @speed = input_hash[:speed] || 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end 


class Car < Vehicle

  attr_accessor :fuel_type, :make, :model

  def initialize(input_hash)
    super 
    @fuel_type = input_hash[:fuel_type]
    @make = input_hash[:make]
    @model = input_hash[:model]
  end 

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle 

  attr_accessor :gears, :type, :weight
  
  def initialize(input_hash)
    super
    @gears = input_hash[:gears]
    @type = input_hash[:type]
    @weight = input_hash[:weight]
  end 

  def ring_bell
    puts "Ring ring!"
  end

end

car1 = Car.new(fuel_type: "diesel", make: "honda", model: "civic", speed: 1)

p car1

bike1 = Bike.new(gears: 21, type: "tandem", weight: 46)

p bike1

