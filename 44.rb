# Euler problem 44
class Problem44
  def main
    pentagnoal_numbers = generate_pentagnoal_numbers(10_000)
    pairs = prepare_pairs(pentagnoal_numbers)

    puts 'Start'
    pairs.each do |pair|
      if pentagnoal_numbers.include?(pair_sum(pair)) && pentagnoal_numbers.include?(pair_difference(pair))
        puts "pair: #{pair}, D:#{value_of_D(pair)}"
      end
      # if pentagnoal_numbers.include?(pair_sum(pair))
      #  puts "pair: #{pair}, D:#{value_of_D(pair)}"
      # end
    end
    puts 'End'
  end

  def pentagonal_sequence(n)
    n * (3 * n - 1) / 2
  end

  def generate_pentagnoal_numbers(n)
    pentagonal_numbers = []

    for i in 1..n
      pentagonal_numbers.push(pentagonal_sequence(i))
    end

    pentagonal_numbers
  end

  def prepare_pairs(numbers_list)
    numbers_list.combination(2).to_a
  end

  def pair_sum(pair)
    pair[0] + pair[1]
  end

  def pair_difference(pair)
    pair[0] - pair[1]
  end

  def value_of_d(pair)
    (pair[1] - pair[0]).abs
  end
end

p44 = Problem44.new
puts p44.main
