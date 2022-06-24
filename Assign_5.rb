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
def get_city_names(someHash)
  someHash.keys
end
 
# Get area code based on given hash and key
def get_area_code(someHash, key)
  someHash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  user_selection = gets.chomp.downcase
  break if user_selection!= "y"
  puts "Which city do you want to lookup?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  city_selection = gets.chomp
  if dial_book.include?(city_selection)
    puts "The area code for #{ city_selection } is #{ get_area_code(dial_book, city_selection) }"
  else 
    puts "You entered an invalid city name"
  end
end