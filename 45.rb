# Euler problem 44 - ugly code but it works
class Problem44
  def main
    puts "t: #{triangle_sequence(2 * 285)}, p: #{pentagonal_sequence(2 * 165)}, h: #{hexagonal_sequence(2 * 143)},"

    triangle_array = []
    triangle_aspect_ratio = 285

    pentagonal_array = []
    pentagonal_aspect_ratio = 165

    hexagonal_array = []
    hexagonal_aspect_ratio = 143

    for i in hexagonal_aspect_ratio..2 * hexagonal_aspect_ratio
      hexagonal_array.push(hexagonal_sequence(i))
    end

    for i in pentagonal_aspect_ratio..2 * pentagonal_aspect_ratio
      pentagonal_array.push(pentagonal_sequence(i))
    end

    for i in triangle_aspect_ratio..2 * triangle_aspect_ratio
      triangle_array.push(triangle_sequence(i))
    end

    hexagonal_array.each do |hex_elem|
      pentagonal_array.each do |pen_elem|
        next unless hex_elem == pen_elem
        triangle_array.each do |tri_elem|
          if pen_elem == tri_elem
            puts "Znalazlem: #{tri_elem}"
          end
        end
      end
    end
  end

  def triangle_sequence(n)
    n * (n + 1) / 2
  end

  def pentagonal_sequence(n)
    n * (3 * n - 1) / 2
  end

  def hexagonal_sequence(n)
    n * (2 * n - 1)
  end
end

p44 = Problem44.new
puts p44.main
