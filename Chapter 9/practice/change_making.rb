def change_making(denominations, amount)
  f = Array.new(amount + 1, Float::INFINITY)
  f[0] = 0

  (1..amount).each do |i|
    denominations.each do |coin|
      if coin <= i
        f[i] = [f[i], f[i - coin] + 1].min
      end
    end
  end

  f[amount] == Float::INFINITY ? -1 : f[amount]
end

p change_making([1, 3, 4], 6)
