YOU_SHOULD_GUESS = 8
NUMBER_OF_GUESSES_ALLOWED = 3
number_of_guesses_used = 0
result = false

puts "Try to guess the number I am thinking of."
puts "You have " + NUMBER_OF_GUESSES_ALLOWED.to_s + " guesses."

NUMBER_OF_GUESSES_ALLOWED.times {
    number_of_guesses_used += 1
    puts "What will be your guess for attempt #" + number_of_guesses_used.to_s + "?"
    your_guess = (gets.chomp).to_i
    if your_guess == 0
        puts "I am thinking about a NUMBER greater than 0!"
    elsif your_guess == YOU_SHOULD_GUESS
        result = true
        break    
    end
}

if result == true 
    puts "Well done, you guessed the number " + YOU_SHOULD_GUESS.to_s + " in " + number_of_guesses_used.to_s + " attempts."
elsif 
    puts "More luck next time. I was thinking about " +  YOU_SHOULD_GUESS.to_s + "."
end       
