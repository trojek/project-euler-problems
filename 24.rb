# Euler problem 24
class Problem24
  def generate_string
    a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    puts a.permutation.to_a[999_999].inspect
  end
end

p24 = Problem24.new

p24.generate_string
