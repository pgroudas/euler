require 'primes'

describe Primes do
  specify 'Primes.factors_of(7) should be [7]' do
    Primes.factors_of(7).should == [7]
  end

  specify 'Primes.factors_of(6) should be [2, 3]' do
    Primes.factors_of(6).should == [2,3]
  end

  specify 'Primes.factors_of(18) should be [2, 3, 3]' do
    Primes.factors_of(18).should == [2,3,3]
  end
end
