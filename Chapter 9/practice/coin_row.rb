=begin 
find the maximum amount of money 
that can be picked up from a coin row without picking two adjacent coins
=end

def coin_row(coins)
  coins.prepend(nil)
  f=[]
  f[0] = 0
  f[1] = coins[1]
  (2...coins.length).each {|i| f[i] = [coins[i] + f[i - 2], f[i - 1]].max}
  f[-1]
end

p coin_row([5, 1, 2, 10, 6, 2])

