users = [
    {userName: "blake", password: "password1"},
    {userName: "jim", password: "password2"},
    {userName: "john", password: "password3"},
    {userName: "dave", password: "password4"},
    {userName: "will", password: "password5"}
]

def authUser(userName, password, list_of_users)
    list_of_users.each do |userRecord|
        if userRecord[:userName] == userName && userRecord[:password] == password
            return userRecord
        end
    end
    "Username and password do not match"
    # dont need a return, last return in Ruby is implied
end
puts "Welcome to authenticator"
25.times { print "-" }
puts
puts "This program will take input from user and verify username and password"

attempts = 1
while attempts < 5
    print "Username: "
    userName = gets.chomp
    print "password: "
    password = gets.chomp
    
    authentication = authUser(userName, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue:"
    userInput = gets.chomp.downcase
    break if userInput == "n"
    attempts += 1
end