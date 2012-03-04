require 'utils'
require 'fibonacci'
require 'eratosthenes'
require 'primes'
require 'integer_ext'

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

  def Euler.problem_4
    largest_palindrome = 0

    (100..999).each do |outer|
      (100..999).each do |inner|
        product = inner * outer
        if product > largest_palindrome && product.palindrome?
          largest_palindrome = product
        end
      end
    end

    largest_palindrome
  end

  def Euler.problem_5
    max_factors = {}

    (2..20).each do |number|
      factors = Primes.factors_of(number).group_by {|i| i}
      factors = factors.merge(factors) {|key, old_value| old_value.length}
      max_factors.merge!(factors) {|key, old_value, new_value| [old_value, new_value].max }
    end

    max_factors.merge(max_factors) {|key, value| key**value}.values.reduce(:*)
  end
end
