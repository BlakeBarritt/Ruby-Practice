require_relative 'Module'
# Practicing Mixins
class Student
  # Need to include module in class
  include Crud
  #Creates and Getter and Setter methods
  attr_accessor :first_name, :last_name, :email, :username, :password

# Instantiates Class
  def initialize(firstname, lastname, username, email, password)    
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end
 
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
  
end
 
blake = Student.new("Blake", "Barritt", "barritt1", "blake@example.com", "password1")
john = Student.new("John", "Doe", "john1", "john1@example.com","password2")

hashed_password = blake.create_hash_digest(blake.password)
p hashed_password