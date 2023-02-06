# Iterate through the numbers 1 to 1000
# For each one, print the output according to the rules of Super Fizz Buzz

def super_fizz_buzz(number)
  if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
    'SuperFizzBuzz'
  elsif number % 3 == 0 && number % 7 == 0
    'SuperFizz'
  elsif number % 5 == 0 && number % 7 == 0
    'SuperBuzz'
  elsif number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  elsif number % 7 == 0
    'Super'
  else
    number
  end
end

(1..1000).each {|number| puts super_fizz_buzz(number)}
