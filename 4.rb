# Euler problem 4
class Problem4
  def palindrome?(number)
    number = number.to_s
    number == number.reverse
  end

  def caa
    number = number.to_s.split('').map(&:to_i)
    number.each_with_index do |elem, index|
      puts "#{elem} and #{number[-index - 1]}"
    end
  end

  def generate_data
    input_array = []
    result_array = []
    for i in 910..999
      input_array.push(i)
    end
    output_array = input_array.product(input_array)

    output_array.each do |elem|
      result_array.push(elem[0] * elem[1])
    end

    result_array = result_array.sort.reverse

    result_array.each do |element|
      puts element if palindrome?(element)
    end
  end
end

p4 = Problem4.new

p4.generate_data
