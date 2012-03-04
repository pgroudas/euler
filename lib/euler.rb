require 'utils'
require 'fibonacci'
require 'eratosthenes'
require 'primes'
require 'integer_ext'
require 'triangle'

module Euler
  Utils.memoize(Fibonacci, :get)
  Utils.memoize(Eratosthenes, :sieve_up_to)
  Utils.memoize(Triangle, :get)

  def Euler.problem_1
    (1..999).find_all {|i|  (i % 3 == 0) || (i % 5 == 0) }.reduce(:+)
  end

  def Euler.problem_2
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

  def Euler.problem_11
    input = <<-END
      08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
      49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
      81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
      52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
      22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
      24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
      32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
      67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
      24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
      21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
      78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
      16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
      86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
      19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
      04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
      88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
      04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
      20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
      20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
      01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48
    END

    rows = input.split("\n")
    rows.map! { |row| row.split(' ').map!{|s| s.to_i }}

    max_product = 0

    (0..19).each do |row_index|
      (0..19).each do |column_index|
        horizontal = vertical = down_diagonal = up_diagonal = 0
        if column_index <= 16
          horizontal = rows[row_index][column_index,4].reduce(:*)
        end

        if row_index <= 16
          vertical = rows[row_index,4].reduce(1) { |product, row| product * row[column_index]}
        end

        if row_index <= 16 && column_index <= 16
          down_diagonal = (0..3).reduce(1) { |product, i| product * rows[row_index + i][column_index + i] }
        end

        if row_index <= 16 && column_index >= 3
          up_diagonal = (0..3).reduce(1) { |product, i| product * rows[row_index + i][column_index - i] }
        end

        max_product = [max_product, horizontal, vertical, down_diagonal, up_diagonal].max
      end
    end

    max_product
  end

  def Euler.problem_12
    triangle_generator = Triangle.new
    n = 1;
    limit = 10_000_000
    puts Eratosthenes.new.sieve_up_to(limit)
    #loop do
      #next_triangle = triangle_generator.get(n)
      #factors = Primes.factors_of(next_triangle, limit)

      #p factors
      #return next_triangle if divisors.length >= 500
      #n += 1
    #end
  end

end
