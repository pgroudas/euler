require 'eratosthenes'

class Primes

  def Primes.factors_of(n)
    primes = Eratosthenes.new.sieve_up_to(n)
    factors = []

    primes.each do |prime|
      while n % prime == 0
        factors << prime
        n /= prime
      end
    end

    return factors
  end
end
