# Iterate through the numbers 1 to 1000
# For each one, print the output according to the rules of Super Fizz Buzz

def super_fizz_buzz(number)
  if divisible_by_3?(number) && divisible_by_5?(number) && divisible_by_7?(number)
    'SuperFizzBuzz'
  elsif divisible_by_3?(number) && divisible_by_7?(number)
    'SuperFizz'
  elsif divisible_by_5?(number) && divisible_by_7?(number)
    'SuperBuzz'
  elsif divisible_by_3?(number) && divisible_by_5?(number)
    'FizzBuzz'
  elsif divisible_by_3?(number)
    'Fizz'
  elsif divisible_by_5?(number)
    'Buzz'
  elsif divisible_by_7?(number)
    'Super'
  else
    number
  end
end

def divisible_by_3?(number)
  number % 3 == 0
end

def divisible_by_5?(number)
  number % 5 == 0
end

def divisible_by_7?(number)
  number % 7 == 0
end

(1..1000).each {|number| puts super_fizz_buzz(number)}
