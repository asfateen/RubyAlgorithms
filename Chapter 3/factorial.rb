def factorial(x)
  return 1 if x == 1
  
  x * factorial(x - 1)
end


