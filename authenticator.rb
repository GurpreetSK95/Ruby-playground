fake_db = {
    "one" => '12345678',
    "two" => 'Gurpreet'
}

puts 'Welcome to Authenticator!'
25.times { '-' }
puts "\n"

puts 'The program will take input from user and compare passwords'

choice = nil
attempts = 0

while choice != 'q'
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
      attempts += 1
      choice = gets.chomp
    end
  else
    puts 'Credentials aren\'t correct'
    puts 'Press q to quit, any other key to continue'
    attempts += 1
    choice = gets.chomp
  end

  if attempts >= 3
    puts 'Attempts limit crossed'
    exit(0)
  end
end