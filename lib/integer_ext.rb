class Integer
  def palindrome?
    string = self.to_s
    string == string.reverse
  end
end
