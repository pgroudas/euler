require 'eratosthenes'

describe Eratosthenes do

  specify 'Primes to 7 should be [2,3,5,7]' do
    eratosthenes = Eratosthenes.new
    eratosthenes.sieve_up_to(7).should == [2,3,5,7]
  end

end
