def fibonacci(n)
  return 1 if n == 1 || n == 2
  bottom_up = []
  bottom_up[1] = 1
  bottom_up[2] = 1
  
  (3..n).each { |i| bottom_up[i] = bottom_up[i - 1] + bottom_up[i - 2]}
  
  bottom_up[n]
end


p fibonacci(9)