# Euler project 29
class Problem29
  def generate_combinations
    array = []
    a_limit = 100
    b_limit = 100

    for i in 2..a_limit
      for j in 2..b_limit
        array.push(i**j)
      end
    end

    array = array.uniq

    puts array.size
  end
end

p29 = Problem29.new
puts p29.generate_combinations
