# Internal: Swaps indexed element of an array with the next element.
# Doesn't check if the elements exist. Modifies the array.
#
# %Array - Array to modify
# %i - index of the element to be swapped
#
# Returns the modified array.
def swap!(arr, idx)
  temp = arr[idx]
  arr[idx] = arr[idx + 1]
  arr[idx + 1] = temp
  arr
end

# Public: Sorts a numeric array in increasing order. Modifies the input array.
#
# %Array - Array to be sorted
#
# Returns the sorted array
def bubble_sort(array)
  n = array.length - 2
  while n.positve?
    i = 0
    while i <= n
      swap!(array, i) if array[i] > array[i + 1]
      i += 1
    end
    n -= 1
  end
  array
end

# Public: Sorts a numeric array in increasing order. Modifies the input array.
#
# %Array - Array to be sorted
#
# block - An optional block that can be used to customize the
#         comparison function.
#
# Returns the sorted array
def bubble_sort_by(array)
  len = array.length - 1
  len.downto(1) do |bound|
    bound.times do |i|
      swap!(array, i) if yield(array[i], array[i + 1]).positive?
    end
  end
  array
end
