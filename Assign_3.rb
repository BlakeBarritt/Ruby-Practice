puts "Simple Calculator"
def add (num1, num2)
    num1.to_f + num2.to_f
end

def subtract (num1, num2)
    num1.to_f - num2.to_f
end

def multiply (num1, num2)
    num1.to_f * num2.to_f
end
puts "Enter the first number"
num1 = gets.chomp
puts "Enter the second number"
num2 = gets.chomp
puts "Enter 1 to add, 2 to subtract, 3 to multiply"
userEntry = gets.chomp

if userEntry == "1"
    puts "You have chosen to add and your first number plus your second number is #{add(num1, num2)}"
elsif userEntry == "2"
    puts "You have chosen to subtract and your first number minus your second number is #{subtract(num1, num2)}"
    
elsif userEntry == "3"
    puts "You have chosen to multiply and your first number times your second number is #{multiply(num1, num2)}"
else 
    puts "Invalid entry"
end


