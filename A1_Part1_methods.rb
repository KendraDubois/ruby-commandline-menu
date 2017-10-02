#Code by: Kendra Dubois
#Class: CIS3260

#Use prime method
require "prime"


def prime(primeNumber, orderChoice)
    primeToPrint = Prime.take_while {|arr| arr <= primeNumber.to_i}
    puts "Prime numbers of " + primeNumber + "..."
    if orderChoice == ":descending"
    	puts "Descending Order:"
        print primeToPrint.reverse
        puts
    else
    	puts "Ascending Order:"
        print primeToPrint
        puts
    end 
end

def word_freq(inputString)
	#Take the string sent in, change to lower case, and remove punctuation
	inputString = inputString.downcase.gsub(/[^a-z0-9\s]/i, '')
	#Split up the entire string word by word
    stringSplitUp = inputString.split(/[^a-zA-Z]/)
    #Create hashtable
    frequencyHash = Hash.new(0)
    stringSplitUp.each {|word| frequencyHash[word] += 1}
    frequencyHash.each {|word, freq| puts "'" + word.to_s + "'" + " x " + freq.to_s}
end


def test_prime()
    puts "Testing test_prime"
    puts "Test 1:"
    puts "Putting prime numbers less than or equal to 25 in ascending order."
    prime("25", ":ascending")
    puts
    
    puts "Test 2:"
    puts "Putting prime numbers less than or equal to 50 in descending order."
    prime("50", ":descending")
    puts
    
    puts "Test 3:"
    puts "Putting prime numbers less than or equal to 100 in 'default' order."
    puts "Note: For this test, ascending or descending have not been inputed."
    puts "This will default to ascending."
    prime("100", "")
    puts
    
end

def test_freq()
    puts "Testing test_freq"
    puts "Test 1:"
    puts "Testing the following string:"
    puts "Anne Twilight came dancing home in the purple winter twilight across the snowy places."
    stringToTest = "Anne Twilight came dancing home in the purple winter twilight across the snowy places."
    puts
    word_freq(stringToTest)
    puts

    puts "Test 2:"
    puts "Testing the following string:"
    puts "NOTHING, nothing, NoTHI!!!NG I?!S eVE!r really LOST to US !!!!as long as? we remEmber /IT/ so try to REMEMBER it!!! remember that too"
    stringToTest2 = "NOTHING, nothing, NoTHI!!!NG I?!S eVE!r really LOST to US !!!!as long as? we remEmber /IT/ so try to REMEMBER it!!! remember that too"
    puts
    word_freq(stringToTest2)
    puts

    puts "Test 3:"
    puts "Testing the following string:"
    puts "DON!KEY!! DONKEY!?!? KONG!!! DO?NK?EY DONKEY!!! KONG! IS HERE!!"
    stringToTest2 = "DON!KEY!! DONKEY!?!? KONG!!! DO?NK?EY DONKEY!!! KONG! IS HERE!!"
    puts
    word_freq(stringToTest2)
    puts
end


#User menu - what user sees in terminal
puts "Welcome!"
puts "Which method would you like to use? Please enter 1,2,3 or 4."
puts "1. prime"
puts "2. word_freq"
puts "3. test_prime"
puts "4. test_freq"

input = gets.chomp

#While user enters more than one argument...
while input.split.size != 1 do
	puts "Please enter one argument."
	input = gets.chomp
end
if input == "1"
    puts
    puts "~*Prime*~"
    puts "Enter the number you want to see the prime numbers of:"
    numberChoice = gets.chomp
    puts
    puts "Enter ':ascending' for ascending or ':descending' for descending:"
    orderChoice = gets.chomp
    if orderChoice == ":ascending"
    	orderChoice = ":ascending"
    elsif orderChoice == ":descending"
    	orderChoice = ":descending"
    else
    	#If user does anything else, default to ascending
    	orderChoice = ":ascending"
    end
    puts
    prime(numberChoice, orderChoice)
elsif input == "2"
	puts
	puts "~*Word Frequency*~"
	puts "Enter a sentence:"
    sentence = gets.chomp
	word_freq(sentence)
elsif input == "3"
	puts
	puts "~*Called: test_prime *~"
	#Call to test prime
	test_prime
elsif input == "4"
	puts
	puts "~*Called: test_freq *~"
	#Call to test frequency
	test_freq
end
puts
