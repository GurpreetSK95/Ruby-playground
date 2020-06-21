dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts 'Do you want to look up an area based on the code? (Y/N)'
  choice = gets.chomp.upcase
  break if choice != 'Y'

  puts 'Input a city name:'
  puts get_city_names(dial_book)
  city_name = gets.chomp.downcase

  if dial_book.include?(city_name)
    puts "The area code is #{get_area_code(dial_book, city_name)}"
  else
    puts 'Invalid city name'
  end
end
