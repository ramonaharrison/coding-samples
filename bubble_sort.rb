// sorts an array of numbers from lowest to highest

def bubble_sort(arr)
  j = 0
  while j < arr.length
    i = 0
    while i < arr.length - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    i += 1
    end
    j += 1
  end
  return arr
end

puts(bubble_sort([9, 8, 1, 2, 4, 5, 6, 7, 8, 52, 35, 84, 2, 0]))
