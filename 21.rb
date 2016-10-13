# Euler problem 21
class Problem21
  def main
    sum = 0
    for i in 1..10_000
      sum += i if amicable?(i)
    end
    sum
  end

  def proper_divisiors(number)
    divisors = []
    for i in 1..number - 1
      divisors.push(i) if (number % i).zero?
    end
    divisors
  end

  def sum_of_numbers(array)
    sum = 0
    array.each do |elem|
      sum += elem
    end
    sum
  end

  def amicable?(number)
    a = number
    b = sum_of_numbers(proper_divisiors(a))
    c = sum_of_numbers(proper_divisiors(b))
    if c == a && a != b
      return true
    else
      return false
    end
  end
end

p21 = Problem21.new
puts p21.main
