def fibonacci(n)
  return n if n == 0 || n == 1
  fibonacci(n - 1) + fibonacci(n - 2)
end
