fake_db = {
    "one" => '12345678',
    "two" => 'Gurpreet'
}

puts 'Welcome to Authenticator!'
25.times { '-' }
puts "\n"

puts 'The program will take input from user and compare passwords'

attempts = 0

while attempts < 3
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp

  actual_password = fake_db[username]
  if !actual_password.nil?
    if actual_password == password
      puts "{ #{username}: #{password} }"
    else
      puts 'Credentials aren\'t correct'
      puts 'Press q to quit, any other key to continue'
      break if gets.chomp == 'q'
      attempts += 1
    end
  else
    puts 'Credentials aren\'t correct'
    puts 'Press q to quit, any other key to continue'
    break if gets.chomp == 'q'
    attempts += 1
  end
end