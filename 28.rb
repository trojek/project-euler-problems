# Euler problem 28
class Problem28
  def count_clockwise_spiral(side_size)
    full_size = side_size * side_size
    step = 1
    result = 1
    current_number = 1
    side_counter = 0
    until current_number == full_size
      current_number = current_number + step + 1
      side_counter += 1
      if side_counter == 4
        side_counter = 0
        step += 2
      end
      result += current_number
    end
    result
  end
end

p28 = Problem28.new
puts p28.count_clockwise_spiral(1001)
