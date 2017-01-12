people = []

person = {}

5.times do 
  puts "enter first name"
  person[:first_name] = gets.chomp
  puts "enter last name"
  person[:last_name] = gets.chomp
  puts "enter email"
  person[:email] = gets.chomp
  person[:account_num] = rand(10000000000)

  people << person

end 

puts people 


