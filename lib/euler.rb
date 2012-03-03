require 'utils'

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

end
