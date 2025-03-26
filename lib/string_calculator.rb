class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, rest_of_numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
      rest_of_numbers.split(delimiter).map(&:to_i).sum
    else
      numbers.split(/[\n,]/).map(&:to_i).sum
    end
  end
end
