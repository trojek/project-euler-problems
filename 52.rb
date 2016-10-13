# Euler problem 92
class Problem92
  def main
    counter = 0

    for i in 1..10_000_000
      chain_element = i
      while chain_element != 1 && chain_element != 89
        chain_element = next_chain_element(chain_element)
        counter += 1 if chain_element == 89
      end

    end

    counter
  end

  def next_chain_element(chain_element)
    multiply_numbers_in_an_array(split_number(chain_element))
  end

  def multiply_numbers_in_an_array(array)
    result = 0
    array.each do |element|
      result += element * element
    end
    result
  end

  def split_number(number)
    splited_number = []
    while number > 0
      splited_number.push(number % 10)
      number /= 10
    end

    splited_number
  end
end

p92 = Problem92.new
puts p92.main
