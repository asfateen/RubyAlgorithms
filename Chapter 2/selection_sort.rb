def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0

  (1...arr.length).each do |i| 
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end
  smallest_index
end

def selection_sort(arr)
  newArr = []
  (0...arr.length).each do |i|
    smallest = find_smallest(arr)
    newArr << arr.delete_at(smallest)
  end
  newArr

end

print selection_sort([5, 3, 6, 2, 10])