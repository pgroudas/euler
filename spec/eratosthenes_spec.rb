require 'eratosthenes'

describe Eratosthenes do

  specify 'Primes to 10 should be [2,3,5,7]' do
    eratosthenes = Eratosthenes.new
    eratosthenes.sieve_up_to(10).should == [2,3,5,7]
  end

end
