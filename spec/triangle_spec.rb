require 'spec_helper'

describe Triangle do
  before(:each) do
    @triangle = Triangle.new
  end

  specify 'triangle(1) should be 1' do
    @triangle.get(1).should == 1
  end

  specify 'triangle(2) should be 3' do
    @triangle.get(2).should == 3
  end

  specify 'triangle(7) should be 28' do
    @triangle.get(7).should == 28
  end
end
