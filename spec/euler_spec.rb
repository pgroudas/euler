require 'euler'

describe Euler do

  it 'Problem 1: The sum of all natural numbers below 1000 that are multiples of 3 or 5 should be "233168"', :problem_1 => true do
    Euler.problem_1.should == 233168;
  end

  it 'Problem 2: The sum of the even values in the fibonacci sequence below 4 million should be "4613732"', :problem_2 => true do
    Euler.problem_2.should == 4613732
  end

  it 'Problem 3: The largest prime factor of "600851475143" should be "6857"', :problem_3 => true do
    Euler.problem_3.should == 6857
  end

  it 'Problem 4: The largest palindromic product of 2 3-digit numbers should be "906609"', :problem_4 => true do
    Euler.problem_4.should == 906609
  end

  it 'Problem 5: The smallest number that is evenly divisible by all numbers 1 to 20 should be "232792560"', :problem_5 => true do
    Euler.problem_5.should == 232792560
  end
end
