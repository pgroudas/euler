class Triangle

  def get(n)
    if n == 1
      return n;
    else
      return get(n - 1) + n
    end
  end

end
