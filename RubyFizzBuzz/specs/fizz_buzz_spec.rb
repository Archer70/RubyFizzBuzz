require_relative "../src/fizz_buzz"

describe FizzBuzz do
	before :each do
	 @fizz_buzz = FizzBuzz.new
	end

  it "does return 'fizz' for multiples of 3." do
    output = @fizz_buzz.get_output_for 3
    output.should == "fizz"
  end

  it "does return 'buzz' for multiples of 5." do
    output = @fizz_buzz.get_output_for 5
    output.should == "buzz"
  end

  it "does return 'fizz buzz' for multiples of 3 and 5." do
    output = @fizz_buzz.get_output_for 15
    output.should == "fizz buzz"
  end

  it "does return the input number if the number is not a multiple of 3 or 5." do
    output = @fizz_buzz.get_output_for 2
    output.should == 2
  end

  it "does build fizz buzz string" do
    fizz_buzz_string = @fizz_buzz.build_string 15
    fizz_buzz_string.should == "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizz buzz"
  end
end