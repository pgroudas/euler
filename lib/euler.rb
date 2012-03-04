require 'utils'
require 'fibonacci'
require 'eratosthenes'

module Euler

  def Euler.problem_1
    (1..999).find_all {|i|  (i % 3 == 0) || (i % 5 == 0) }.reduce(:+)
  end

  def Euler.problem_2
    Utils.memoize(Fibonacci, :get)

    fibonacci = Fibonacci.new
    sum = 0
    i = 0

    loop do
      value = fibonacci.get(i)
      break if value > 4_000_000

      sum += value if value.even?
      i += 1
    end

    sum
  end

  def Euler.problem_3
    large_number = 600851475143
    prime_factors = []

    eratosthenes = Eratosthenes.new
    primes = eratosthenes.sieve_up_to(10_000)

    primes.each do |prime|
      loop do
        break unless large_number % prime == 0
        large_number /= prime
        prime_factors << prime
      end
    end

    prime_factors.reduce {|max, item| [max, item].max}
  end

end
