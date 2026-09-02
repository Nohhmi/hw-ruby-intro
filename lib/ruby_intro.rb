# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum += a}
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  len = arr.length()
  if len == 0
    return 0
  elsif len == 1
    return arr[0]
  end
  m1 = [arr[0], arr[1]].max
  m2 = [arr[0], arr[1]].min
  arr[2...].each do |x|
    if x > m1
      m2 = m1
      m1 = x
    elsif m2 < x and x <= m1
      m2 = x
    end
  end
  return m1 + m2
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1
    return false
  end
  (0...arr.length).each do |i|
    ((i + 1)...arr.length).each do |j|
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name 
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  c = s[0]
  if !c.match?(/[A-Za-z]/)
    return false
  end
  c = c.upcase
  if(c >= 'A' && c <= 'Z' && c != 'A' && c != 'E' && c != 'i' && c != 'O' && c != 'U')
    return true
  end
  return false
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  n = s.length
  if(s == '0') 
    return true
  end
  if n < 2
    return false
  end
  s.each_char do |c|
    if !c.match(/[01]/)
      return false
    end
  end
  if s[n - 2] == '0' && s[n - 1] == '0'
    return true
  end
  return false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if(isbn.length == 0 || price <= 0)
      raise ArgumentError
    end 
    @isbn = isbn
    @price = price
  end

  def price_as_string()
    return '$' + format("%.2f", @price)
  end

end
