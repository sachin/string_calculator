# String Calculator TDD Kata

## Problem Statement
The **String Calculator** is a coding challenge that follows the principles of **Test-Driven Development (TDD)**. The goal is to implement a method `add(string numbers)`, which takes a string of numbers and returns their sum while handling various cases.

### Requirements:
1. An empty string returns `0`.
2. A single number returns the number itself.
3. Two numbers, comma-separated, return their sum.
4. The method handles an unknown number of numbers.
5. The method supports newline (`\n`) as a delimiter, in addition to commas.
6. Custom delimiters are supported, specified at the beginning of the string in the format: `//[delimiter]\n[numbers…]`.
7. If a negative number is encountered, an exception is thrown with the message: **"negative numbers not allowed"** followed by the list of negative numbers.

---

## Setup Instructions
### **1. Clone the Repository**
```sh
git clone <repository-url>
cd string_calculator
```

### **2. Install Dependencies**
Ensure you have [Bundler](https://bundler.io/) installed:
```sh
gem install bundler
```
Then install required gems:
```sh
bundle install
```

### **3. Run Tests**
To execute tests using **RSpec**, run:
```sh
rspec
```

Alternatively, if you have **Rake** configured, you can run:
```sh
rake
```

---

## Directory Structure
```
string_calculator/
│── lib/
│   ├── string_calculator.rb  # Implementation file
│── spec/
│   ├── string_calculator_spec.rb  # RSpec tests
│── .gitignore  # Git ignore configurations
│── .rspec  # RSpec configuration
│── Gemfile  # Gem dependencies
│── Gemfile.lock  # Gem dependencies lock file
│── README.md  # This file
```

---

## Example Usage
```ruby
require_relative "lib/string_calculator"

puts StringCalculator.add("1,2,3")  # Output: 6
puts StringCalculator.add("1\n2,3")  # Output: 6
puts StringCalculator.add("//;\n1;2;3")  # Output: 6
```


