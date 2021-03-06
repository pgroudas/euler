require 'spec_helper'

describe Euler do

  it 'Problem 1: The sum of all natural numbers below 1000 that are multiples of 3 or 5 should be "233168"', :problem_1 => true do
    Euler.problem_1.should == 233168;
  end

  it 'Problem 2: The sum of the even values in the fibonacci sequence below 4 million should be "4613732"', :problem_2 => true do
    Euler.problem_2.should == 4613732
  end

  it 'Problem 3: The largest prime factor of "600851475143" should be "6857"', :problem_3 => true do
    Euler.problem_3.should == 6857
  end

  it 'Problem 4: The largest palindromic product of 2 3-digit numbers should be "906609"', :problem_4 => true do
    Euler.problem_4.should == 906609
  end

  it 'Problem 5: The smallest number that is evenly divisible by all numbers 1 to 20 should be "232792560"', :problem_5 => true do
    Euler.problem_5.should == 232792560
  end

  it 'Problem 6: The difference between the sum of squares and square of sum of the first 100 natural numbers should be "25164150"', :problem_6 => true do
    Euler.problem_6.should == 25164150
  end

  it 'Problem 7: The 10001st prime should be "104743"', :problem_7 => true do
    Euler.problem_7.should == 104743
  end

=begin
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
=end
  it 'Problem 8: The greatest product of 5 consecutive digits of this 1000-digit number should be "40824"', :problem_8 => true do
    Euler.problem_8.should == 40824
  end

  it 'Problem 9: The product of the only pythagorean triple whose sum is 1000 should be "31875000"', :problem_9 => true do
    Euler.problem_9.should == 31875000
  end

  it 'Problem 10: The sum of all primes below 2 million should be "142913828922"', :problem_10 => true do
    Euler.problem_10.should == 142913828922
  end

  it 'Problem 11: The greatest product of 4 adjacent numbers should be "1788696"', :problem_11 => true do
    Euler.problem_11.should == 70600674
  end

  it 'Problem 12: The first triangle number that has 500 divisors should be "76576500"', :problem_12 => true do
    Euler.problem_12.should == 76576500
  end

  it 'Problem 13: The first ten digits of the sum of the following 50-digit numbers should be"5537376230"', :problem_13 => true do
    input = <<-END
      37107287533902102798797998220837590246510135740250
      46376937677490009712648124896970078050417018260538
      74324986199524741059474233309513058123726617309629
      91942213363574161572522430563301811072406154908250
      23067588207539346171171980310421047513778063246676
      89261670696623633820136378418383684178734361726757
      28112879812849979408065481931592621691275889832738
      44274228917432520321923589422876796487670272189318
      47451445736001306439091167216856844588711603153276
      70386486105843025439939619828917593665686757934951
      62176457141856560629502157223196586755079324193331
      64906352462741904929101432445813822663347944758178
      92575867718337217661963751590579239728245598838407
      58203565325359399008402633568948830189458628227828
      80181199384826282014278194139940567587151170094390
      35398664372827112653829987240784473053190104293586
      86515506006295864861532075273371959191420517255829
      71693888707715466499115593487603532921714970056938
      54370070576826684624621495650076471787294438377604
      53282654108756828443191190634694037855217779295145
      36123272525000296071075082563815656710885258350721
      45876576172410976447339110607218265236877223636045
      17423706905851860660448207621209813287860733969412
      81142660418086830619328460811191061556940512689692
      51934325451728388641918047049293215058642563049483
      62467221648435076201727918039944693004732956340691
      15732444386908125794514089057706229429197107928209
      55037687525678773091862540744969844508330393682126
      18336384825330154686196124348767681297534375946515
      80386287592878490201521685554828717201219257766954
      78182833757993103614740356856449095527097864797581
      16726320100436897842553539920931837441497806860984
      48403098129077791799088218795327364475675590848030
      87086987551392711854517078544161852424320693150332
      59959406895756536782107074926966537676326235447210
      69793950679652694742597709739166693763042633987085
      41052684708299085211399427365734116182760315001271
      65378607361501080857009149939512557028198746004375
      35829035317434717326932123578154982629742552737307
      94953759765105305946966067683156574377167401875275
      88902802571733229619176668713819931811048770190271
      25267680276078003013678680992525463401061632866526
      36270218540497705585629946580636237993140746255962
      24074486908231174977792365466257246923322810917141
      91430288197103288597806669760892938638285025333403
      34413065578016127815921815005561868836468420090470
      23053081172816430487623791969842487255036638784583
      11487696932154902810424020138335124462181441773470
      63783299490636259666498587618221225225512486764533
      67720186971698544312419572409913959008952310058822
      95548255300263520781532296796249481641953868218774
      76085327132285723110424803456124867697064507995236
      37774242535411291684276865538926205024910326572967
      23701913275725675285653248258265463092207058596522
      29798860272258331913126375147341994889534765745501
      18495701454879288984856827726077713721403798879715
      38298203783031473527721580348144513491373226651381
      34829543829199918180278916522431027392251122869539
      40957953066405232632538044100059654939159879593635
      29746152185502371307642255121183693803580388584903
      41698116222072977186158236678424689157993532961922
      62467957194401269043877107275048102390895523597457
      23189706772547915061505504953922979530901129967519
      86188088225875314529584099251203829009407770775672
      11306739708304724483816533873502340845647058077308
      82959174767140363198008187129011875491310547126581
      97623331044818386269515456334926366572897563400500
      42846280183517070527831839425882145521227251250327
      55121603546981200581762165212827652751691296897789
      32238195734329339946437501907836945765883352399886
      75506164965184775180738168837861091527357929701337
      62177842752192623401942399639168044983993173312731
      32924185707147349566916674687634660915035914677504
      99518671430235219628894890102423325116913619626622
      73267460800591547471830798392868535206946944540724
      76841822524674417161514036427982273348055556214818
      97142617910342598647204516893989422179826088076852
      87783646182799346313767754307809363333018982642090
      10848802521674670883215120185883543223812876952786
      71329612474782464538636993009049310363619763878039
      62184073572399794223406235393808339651327408011116
      66627891981488087797941876876144230030984490851411
      60661826293682836764744779239180335110989069790714
      85786944089552990653640447425576083659976645795096
      66024396409905389607120198219976047599490197230297
      64913982680032973156037120041377903785566085089252
      16730939319872750275468906903707539413042652315011
      94809377245048795150954100921645863754710598436791
      78639167021187492431995700641917969777599028300699
      15368713711936614952811305876380278410754449733078
      40789923115535562561142322423255033685442488917353
      44889911501440648020369068063960672322193204149535
      41503128880339536053299340368006977710650566631954
      81234880673210146739058568557934581403627822703280
      82616570773948327592232845941706525094512325230608
      22918802058777319719839450180888072429661980811197
      77158542502016545090413245809786882778948721859617
      72107838435069186155435662884062257473692284509516
      20849603980134001723930671666823555245252804609722
      53503534226472524250874054075591789781264330331690
    END

    pending('Not implemented yet')
  end

=begin
The following iterative sequence is defined for the set of positive integers:

n  n/2 (n is even)
n  3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end
  it 'Problem 14: should be "837799"', :problem_14 => true do
    pending('Not implemented yet')
  end

=begin
Starting in the top left corner of a 22 grid, there are 6 routes (without backtracking) to the bottom right corner.

How many routes are there through a 2020 grid?
=end
  it 'Problem 15: The number of routes from the top left to bottom right of a 20x20 grid should be "137846528820"', :problem_15 => true do
    pending('Not implemented yet')
  end

  it 'Problem 16: The sum of the digits of 2^1000 should be "1366"', :problem_16 => true do
    pending('Not implemented yet')
  end

=begin
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
=end
  it 'Problem 17: should be "21124"', :problem_17 => true do
    pending('Not implemented yet')
  end

=begin
By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom of the triangle below:

75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)
=end
  it 'Problem 18: should be "1074"', :problem_18 => true do
    pending('Not implemented yet')
  end

=begin
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end
  it 'Problem 19: should be "171"', :problem_19 => true do
    pending('Not implemented yet')
  end

  it 'Problem 20: The sum of the digits of 100! should be "648"', :problem_20 => true do
    pending('Not implemented yet')
  end

=begin
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end
  it 'Problem 21: The sum of all amicable numbers under 10000 should be "31626"', :problem_21 => true do
    pending('Not implemented yet')
  end

=begin
Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.

What is the total of all the name scores in the file?
=end
  it 'Problem 22: The total of all the name scores in "names.txt" should be "871198282"', :problem_22 => true do
    pending('Not implemented yet')
  end

=begin
A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
=end
  it 'Problem 23: The sum of all the positive integers which cannot be written as the sum of two abundant numbers should be "4179871"', :problem_23 => true do
    pending('Not implemented yet')
  end

=begin
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
=end
  it 'Problem 24: The millionth lexicographic permutation of the digits 0-9 should be "2783915460"', :problem_24 => true do
    pending('Not implemented yet')
  end

=begin
The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn1 + Fn2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the first term in the Fibonacci sequence to contain 1000 digits?
=end
  it 'The first term in the fibonacci sequence to contain 1000 digits should be "4782"', :problem_25 => true do
    pending('Not implemented yet')
  end

end
