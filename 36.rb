# Euler problem 36
class Problem36
  def main
    sum = 0
    for i in 1..999_999
      sum += i if palindrome?(i.to_s) && palindrome?(i.to_s(2))
    end
    sum
  end

  def palindrome?(number)
    palindrome = true

    for i in 0..(number.size - 1) / 2
      palindrome = false if number[i] != number[number.size - 1 - i]
    end

    palindrome
  end
end

p36 = Problem36.new
puts p36.main
