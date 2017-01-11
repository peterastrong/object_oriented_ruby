class Employee

  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :salary, :active

  def initialize(first_name: "john", last_name: "doe", salary: 60000, active: true)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @active = active
  end

  def print_info
    "#{first_name} #{last_name} makes $#{salary} now. Wow!!!!"
  end

  def full_name 
    
    if @last_name.end_with?('s') 
      puts "#{first_name} #{last_name}, esquire"
    else 
      puts "#{first_name} #{last_name}"
    end 
  end 

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def all_info
    puts "#{first_name} #{last_name} has a salary of #{salary} and work status is #{active}. "
  end 
end

employee1 = Employee.new(active: true, first_name: "Kenny", salary: 90000, last_name: "Parekh")
employee2 = Employee.new(active: true, first_name: "John", salary: 90000, last_name: "Johns")
employee3 = Employee.new(first_name: "Bill")

puts employee1.full_name
puts employee2.full_name
puts employee3.all_info

# Create 100 employees and store them in an array. 
# Loop through each employee and display each of their full names.
employees = []

100.times do   
  employees << Employee.new()
end 

employees.each do |employee|
  puts employee.full_name
end 




