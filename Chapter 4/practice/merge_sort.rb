def merge_sort(arr)
  return arr if arr.length <= 1
  
  mid = arr.length.div(2)
  leftHalf = arr[0...mid]
  rightHalf = arr[mid..-1]

  merge(merge_sort(leftHalf), merge_sort(rightHalf))
end

def merge(left, right)
  result = []
  i = j = 0

  while i < left.length && j < right.length
    if left[i] < right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end
  result += left[i..-1]
  result += right[j..-1]
  result
  end

  p merge_sort([3, 7, 6, -10, 15, 23.5, 55, -13])
    

