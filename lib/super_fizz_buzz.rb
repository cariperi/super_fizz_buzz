class SuperFizzBuzz

  def initialize
  end

  def calculate(number)
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
      number.to_s
    end
  end

  def output(number)
    calculate(number)
  end

  def output_range(number_1, number_2)
    (number_1..number_2).map { |number| calculate(number) }
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
end

#(1..1000).each {|number| puts super_fizz_buzz(number)}
