# Euler problem 9
class Problem9
  def main
    set = []
    a = 1
    b = a + 1
    c = 1000 - (a + b)

    while a < b && a < 1000 / 2 - 1
      while b < c
        set.push([a, b, c])
        # puts "a, b, c #{a} #{b} #{c}"
        b += 1
        c = 1000 - (a + b)
      end
      a += 1
      b = a + 1
      c = 1000 - (a + b)
      set.push([a, b, c])
      # puts "a, b, c #{a} #{b} #{c}"
    end

    # puts set.inspect
    set.each do |e|
      if (e[0] * e[0] + e[1] * e[1]) == e[2] * e[2]
        puts e.inspect
        puts e[0] * e[1] * e[2]
      end
    end
  end
end

p9 = Problem9.new

p9.main
