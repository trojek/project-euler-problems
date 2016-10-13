# Euler problem 14
class Problem14
  def main
    array = []
    for i in 837_799..847_000
      array.push(collatz_sequence(i))
    end
    array = array.sort.reverse
    puts array[0..20]
    end

  def collatz_sequence(n)
    counter = 1
    until n == 1
      if n.even?
        n /= 2
        counter += 1
      else
        n = 3 * n + 1
        counter += 1
      end
    end
    counter
  end
end

p14 = Problem14.new
puts p14.main
