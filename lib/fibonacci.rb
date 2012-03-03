class Fibonacci

  def get(n)
    if n < 2
      return n;
    else
      return get(n - 1) + get(n - 2) 
    end
  end

end
