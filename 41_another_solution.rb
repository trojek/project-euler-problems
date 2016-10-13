# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.
# What is the largest n-digit pandigital prime that exists?
class Problem41
  987_654_321
  def main
    anwser = 0
    aop = generate_pandigital_permutation
    aop = aop.reverse
    aop.each do |elem|
      next unless prime?(elem.to_i)
      anwser = elem.to_i
      puts elem
      return elem
    end
  end

  def prime?(number)
    sqrt_number = Math.sqrt(number).to_i
    for i in 2..sqrt_number
      return false if (number % i).zero?
    end
    true
  end

  def generate_pandigital_permutation
    (1..7).to_a.permutation.map(&:join)
  end
end

p41 = Problem41.new
p41.main
