def countdown(i)
  puts i
  if i <= 0
    return nil
  else
    countdown(i - 1)
  end
end

