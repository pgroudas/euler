class Eratosthenes
  def sieve_up_to(n)
    possible_primes = Array.new(n, true)

    (2..(n/2)).each do |outer|
      if possible_primes[outer]
        (2*outer..n).step(outer) do |inner|
          possible_primes[inner] = false
        end
      end
    end

    possible_primes[0] = false
    possible_primes[1] = false

    primes = []

    possible_primes.each_with_index do | is_prime, index |
      primes << index if is_prime
    end

    primes
  end
end
