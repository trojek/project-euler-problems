# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.
# What is the largest n-digit pandigital prime that exists?
class Problem41
  987_654_321
  def main
    for i in 987_654_321.downto(123_456_789)
      next unless prime?(i)
      if pandigital?(i)
        puts "Hej, że: #{i}"
        return i
      end
    end
  end

  def prime?(number)
    sqrt_number = Math.sqrt(number).to_i
    for i in 2..sqrt_number
      return false if (number % i).zero?
    end
    true
  end

  def pandigital?(number)
    number = number.to_s.split('').sort
    size = number.size
    pandigital = true
    for i in 1..size
      pandigital = false if number[i - 1].to_i != i
    end
    pandigital
  end
end

p41 = Problem41.new
puts p41.main
