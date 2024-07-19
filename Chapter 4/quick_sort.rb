def quick_sort(arr)
  return arr if arr.length < 2
  
  pivot = arr[0]

  less, greater = arr[1..-1].partition { |i| i <= pivot}

  quick_sort(less) + [pivot] + quick_sort(greater)
end

