# def greet(name)
#   # Docstring can be added for better documentation
#   puts "Hello, #{name}!"
# end

# # Calling the function
# greet("Ruby User")
# Array of integers
# my_numbers = [1, 5, 8, 3, 2]
# for i in 1..5  # Iterates 5 times (from 1 to 5)
#   puts i * 2
# end

#bubble sort
def bubble_sort(numbers)
  n = numbers.length
  puts "#{n}"

  # Optimized loop to avoid out-of-bounds access
  for i in 0...(n - 1)  # Iterate n-1 times for passes
    swapped = false
    for j in 0...(n - i - 1)  # Iterate up to n-i-1 elements in each pass
      if numbers[j] > numbers[j + 1]
        numbers[j], numbers[j + 1] = numbers[j + 1], numbers[j]  # Swap elements
        swapped = true
      end
    end
    break unless swapped  # Exit loop if no swaps occurred (already sorted)
  end
end

#binary search
def binary_search(arr, low, high, x)
  if low > high
    return -1
  end

  mid = (low + high) / 2

  if arr[mid] == x
    return mid

  elsif arr[mid] < x
    return binary_search(arr, mid + 1, high, x)

  else
    return binary_search(arr, low, mid - 1, x)
  end
end


#radix sort
def radix_sort_descending(nums)
  return [] if nums.empty?

  # Find the maximum number to determine the number of digits
  max_num = nums.max
  exp = 1  # Exponent to determine which digit to sort by

  # Loop until we've sorted by every digit
  while max_num / exp > 0
    counting_sort_by_digit(nums, exp)
    exp *= 10  # Move to the next digit
  end

  nums
end

def counting_sort_by_digit(nums, exp)
  # Count array to count occurrences of each digit (0-9)
  count = Array.new(10, 0)

  # Determine the index of each number based on the current digit (exp)
  nums.each do |num|
    index = (num / exp) % 10
    count[index] += 1
  end

  # Modify count array for descending order
  # Accumulate from back to get the correct positions for descending order
  (8).downto(0) do |i|
    count[i] += count[i + 1]
  end

  # Create the output array and build it based on the current digit
  output = Array.new(nums.size)

  # Fill the output array based on the sorted positions
  (nums.size - 1).downto(0) do |i|
    index = (nums[i] / exp) % 10
    output[count[index] - 1] = nums[i]
    count[index] -= 1
  end

  # Copy the output array to nums[], so that nums contains sorted numbers
  nums.each_with_index do |_, i|
    nums[i] = output[i]
  end
end

# Sample array
numbers = [1, 5, 8, 3, 2, 0, 4, 6, 10, 11, 23, 56, 78, 12, 43, 54, 21, 32, 45, 89, 98, 76, 57, 34, 29]


#radix sort
random_numbers = [1, 5, 8, 3, 2, 0, 4, 6, 10, 11, 23, 56, 78, 12, 43, 54, 21, 32, 45, 89, 98, 76, 57, 34, 29]
radix_sort_descending(random_numbers)
puts "Sorted list in descending order(radix):  #{random_numbers}"


#bubble_sort
bubble_sort(numbers)
puts "Sorted numbers (bubble): #{numbers}"


#binary_search(numbers have to be sorted)
x = 4
result = binary_search(numbers, 0, numbers.length - 1 , x)
if result != -1
    puts "Element is present at index #{result} \n"
else
    puts "Element not found\n"
end
