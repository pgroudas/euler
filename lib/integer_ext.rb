class Integer
  def palindrome?
    string = self.to_s
    string == string.reverse
  end

  def product_of_digits
    self.to_s.chars.reduce(1) {|product, char| product *= char.to_i}
  end
end
