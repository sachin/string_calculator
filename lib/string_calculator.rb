class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, rest_of_numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
      numbers_array = rest_of_numbers.split(delimiter).map(&:to_i)
    else
      numbers_array = numbers.split(/[\n,]/).map(&:to_i)
    end

    negative_number = numbers_array.select(&:negative?)
    raise "negative numbers not allowed #{negative_number.join(',')}" unless negative_number.empty?
    numbers_array.sum
  end
end
