require 'spec_helper'

describe Integer do
  specify '"9009.palindrome?" should be true"' do
    9009.palindrome?.should be_true
  end

  specify '"100.palindrome?" should be false"' do
    100.palindrome?.should be_false
  end

  specify '"12354.product_of_digits" should be "120"' do
    12345.product_of_digits.should == 120
  end

  specify '"5.product_of_digits" should be "5"' do
    5.product_of_digits.should == 5
  end
end
