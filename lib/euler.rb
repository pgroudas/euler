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

  def Euler.problem_6
    sum_of_squares = (1..100).reduce(0) { |sum, item| sum + item**2 }
    square_of_sum = (1..100).reduce(:+)**2

    (sum_of_squares - square_of_sum).abs
  end

  def Euler.problem_7
    eratosthenes = Eratosthenes.new
    eratosthenes.sieve_up_to(1_000_000)[10000]
  end

  def Euler.problem_8
    input = <<-END
      73167176531330624919225119674426574742355349194934
      96983520312774506326239578318016984801869478851843
      85861560789112949495459501737958331952853208805511
      12540698747158523863050715693290963295227443043557
      66896648950445244523161731856403098711121722383113
      62229893423380308135336276614282806444486645238749
      30358907296290491560440772390713810515859307960866
      70172427121883998797908792274921901699720888093776
      65727333001053367881220235421809751254540594752243
      52584907711670556013604839586446706324415722155397
      53697817977846174064955149290862569321978468622482
      83972241375657056057490261407972968652414535100474
      82166370484403199890008895243450658541227588666881
      16427171479924442928230863465674813919123162824586
      17866458359124566529476545682848912883142607690042
      24219022671055626321111109370544217506941658960408
      07198403850962455444362981230987879927244284909188
      84580156166097919133875499200524063689912560717606
      05886116467109405077541002256983155200055935729725
      71636269561882670428252483600823257530420752963450
    END

    input.gsub!(/\W/,'')

    max_product = 0
    (0..input.length - 6).each do |index|
      max_product = [input[index,5].to_i.product_of_digits, max_product].max
    end

    max_product
  end

=begin
a = m^2 - n^2, b = 2mn, c = m^2 + n^2
a + b + c = 1000
a^2 + b^2 = c^2

2m^2 + 2mn = 1000
m^2 + mn = 500
n = 500/m -m
=end
  def Euler.problem_9
    (2..1000).each do |n|
      (n+1..1000).each do |m|
        a = m**2 - n**2
        b = 2 * m * n
        c = m**2 + n**2

        sum = a + b + c
        return a * b * c if sum == 1000
        break if sum > 1000
      end
    end
  end

  def Euler.problem_10
    eratosthenes = Eratosthenes.new
    eratosthenes.sieve_up_to(2_000_000).reduce(:+)
  end
end
