puts "Simple Calculator\n\n"

puts 'Enter first number'
first = gets.chomp.to_i

puts 'Enter second number'
second = gets.chomp.to_i

puts 'Enter operation to perform: +, -, *, /, % or q'
choice = gets.chomp

case choice
when '+'
  puts "Adding both of them gives #{first + second}"
when '-'
  puts "Subtracting both of them gives #{first - second}"
when '*'
  puts "Multiplying both of them gives #{first + second}"
when '/'
  puts "Dividing both of them gives #{first.to_f / second}"
when '%'
  puts "The remainder is #{first % second}"
when 'q'
  exit(0)
else
  puts 'Invalid choice!'
end