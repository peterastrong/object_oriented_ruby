module VehicleTrait
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

class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end
end 

class Car < Vehicle
  include VehicleTrait

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include VehicleTrait

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new 
p car.accelerate
car.honk_horn
puts 
puts "------"
puts 
bike = Bike.new 
p bike.accelerate
bike.ring_bell