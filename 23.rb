# Euler problem 23
class Problem23
  def abundant_numbers_under_28112
    abundants = []
    for i in 12..28_112
      abundants.push(i) if abundant?(i)
    end
    abundants
  end

  def abundant?(number)
    proper_divisors = []
    for i in 1..number - 1
      proper_divisors.push(i) if (number % i).zero?
    end
    if sum_elements(proper_divisors) > number
      return 1
    else
      return 0
    end
  end

  def sum_elements(array)
    sum = 0
    array.each do |element|
      sum += element
    end
    sum
  end
end

p23 = Problem23.new
puts p23.abundant_numbers_under_28112
