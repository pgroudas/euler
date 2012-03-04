require 'integer_ext'

describe Integer do
  specify '"9009.palindrome?" should be true"' do
    9009.palindrome?.should be_true
  end

  specify '"100.palindrome?" should be false"' do
    100.palindrome?.should be_false
  end
end
