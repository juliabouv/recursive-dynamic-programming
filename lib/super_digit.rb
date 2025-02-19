# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10
  
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end

  return super_digit(sum)
end


# Time Complexity - Is this O(2^n) (exponential), because the method gets called twice each time?
# Space Complexity - Is this O(2^n) (exponential), because the method gets called twice each time?
def refined_super_digit(n, k)
  return super_digit(super_digit(n) * k)
end
