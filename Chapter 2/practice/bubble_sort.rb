def bubble_sort(arr)
  (0...arr.length - 1).each do |i|
    swapped = false
    (0...arr.length - i - 1).each do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    unless swapped
      break
    end
  end
  arr
end
