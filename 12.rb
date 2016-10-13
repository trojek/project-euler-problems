require 'prime'

# Euler problem 12
class Problem12
  def main
    anwser = false
    number = 76_576_500
    while anwser == false
      triangle_number = create_triangle_number(number)
      puts triangle_number
      puts count_divisors(prime_factor(triangle_number))
      if count_divisors(prime_factor(triangle_number)) > 500
        anwser = true
        puts number
      end
      number += 1
    end
  end

  def create_triangle_number(x)
    number = 0
    for i in 1..x
      number += i
    end
    number
  end

  def prime_factor(number)
    primes = Prime.take(100_000)
    array = []
    i = 0
    while number != 1
      if (number % primes[i]).zero?
        number /= primes[i]
        array.push(primes[i])
      else
        i += 1
      end
    end
    array
  end

  def count_divisors(array)
    divisors = 1
    primes = Prime.take(100_000)
    primes.each do |prime|
      part = 1
      array.each do |elem|
        part += 1 if prime == elem
      end
      divisors = part * divisors
    end
    divisors
  end
end

p12 = Problem12.new

# puts p12.count_divisors(p12.create_triangle_number(100000))
# puts p12.create_triangle_number(10000000)
puts p12.main
