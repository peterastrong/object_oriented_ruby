class Employee

  attr_reader :first_name, :last_name
  attr_accessor :salary, :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name] || "John"
    @last_name = input_hash[:last_name] || "doe"
    @salary = input_hash[:salary] || 50000
    @active = input_hash[:active] || true 
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
employee3 = Employee.new(first_name: "Lynn", last_name: "Strong", )
employee3 = Employee.new({})

class Manager < Employee #Inheritance 
  
  attr_accessor :employees 

  def initialize(input_hash)
    super
    @employees = input_hash[:employees] || "none"
  end 

  def send_report
    puts "sending report"
    puts "done!"
  end 

  def print_info #overide method from Employee class 
    "#{first_name} #{last_name} makes $#{salary} now. very cool. "
  end

  def give_all_raises 
    @employees.each do |employee|
      employee.give_annual_raise
    end 
  end 

  

  def fire_all_emp
    @employees.each do |employee|
      employee.active = false 
    end
  end 
end 

manager1 = Manager.new(first_name: "Jane", last_name: "Smith", salary: 100, active: true, employees: [employee1, employee2, employee3])


manager1.give_all_raises
manager1.fire_all_emp

manager1.employees.each do |employee|
  p employee
end 


