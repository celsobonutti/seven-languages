print "Guess the number: "
number = rand(10)
guess = 0
while guess != number
  begin
    guess = Integer(gets, 10)
    print "Too big, try again: " if guess > number
    print "Too small, try again: " if guess < number
  rescue
    print "Please only input numbers: "
  end
end
puts "You got it! The number is #{number}"
