class FizzBuzz
  def get_output_for number
    return "fizz buzz" if number % 3 == 0 && number % 5 == 0
    return "fizz" if number % 3 == 0
    return "buzz" if number % 5 == 0
    number
  end

  def build_string number = 100
    return_string = ""
    number.times do |count|
      return_string << get_output_for(count + 1).to_s << " "
    end
    return_string.strip
  end
end