require 'euler'

describe Euler do
  it 'The sum of all natural numbers below 1000 that are multiples of 3 or 5 should be "233168"', :problem_1 => true do
    Euler::problem_1.should == 233168;
  end

  it 'The sum of the even values in the fibonacci sequence below 4 million should be "4613732"', :problem_2 => true do
    Euler::problem_2.should == 4613732
  end
end
