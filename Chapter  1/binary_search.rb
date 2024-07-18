def binary_search(list, item)
  low = 0
  high = list.length - 1
  
  while low <= high
    mid = (low + high) / 2
    guess = list[mid]

    return mid if guess == item

    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
  nil
end

my_list = [1, 3, 5, 7, 9]

p binary_search(my_list, 3)

p binary_search(my_list, -1)

p binary_search(my_list, 7)
