require 'fibonacci'

describe Fibonacci do
  before(:each) do
    @fibonacci = Fibonacci.new
  end

  specify 'fibonacci(0) should be 0' do
    @fibonacci.get(0).should == 0
  end

  specify 'fibonacci(1) should be 1' do
    @fibonacci.get(1).should == 1
  end

  specify 'fibonacci(2) should be 1' do
    @fibonacci.get(2).should == 1
  end

  specify 'fibonacci(n) should be fibonacci(n-1) + fibonacci(n-2)' do
    @fibonacci.get(4).should == @fibonacci.get(3) + @fibonacci.get(2)
  end

end
