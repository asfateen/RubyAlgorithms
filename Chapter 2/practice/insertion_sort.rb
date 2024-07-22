def insertion_sort(arr)
  (1...arr.length).each do |i|
    key = arr[i]
    j = i - 1
    while j >= 0 && key < arr[j]
      arr[j + 1] = arr[j]
      j -= 1
    end
      arr[j + 1] = key
  end
  arr
end
