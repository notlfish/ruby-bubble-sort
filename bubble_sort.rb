# Public: Format some data with the given format. Possible format
# identifiers include:
#
# %i   - Output the Integer i.
# %f.n - Output a Float f with n decimal places rounded.
#
# The format String may include any text. To escape a percent sign, prefix
# it with a backslash:
#
#   "The sale price was %f.n\% off retail."#

def swap(arr, i)
  temp = arr[i]
  arr[i] = arr[i+1]
  arr[i+1] = temp
  arr
end

def bubble_sort(array)
  n = array.length - 2
  i = 0
  while n > 0
    while i <= n
      if array[i] > array[i+1]
        swap(array, i)
      end
      i += 1
    end
    n -= 1
  end

end
