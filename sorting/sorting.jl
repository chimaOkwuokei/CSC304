# for i in 1:5  # Loop iterates from 1 to 5 (inclusive)
#     println(i^2)  # Print the square of each number
#   end
# numbers = [1, 5, 8, 3, 2]
# array_length = length(numbers)
# println("Array length:", array_length)

#array indexes starts from 1
#bubble_sort
function bubble_sort(numbers)
    n = length(numbers)
    println(n)

    for i in 1:(n-1)
        for j in 1:(n-i)
            if numbers[j] > numbers[j+1]
                numbers[j], numbers[j+1] = numbers[j+1], numbers[j]
            end
        end
    end
end

#binary search
function binary_search(arr, low, high, x)
    if low > high
        return -1
    end
    mid = div(low + high, 2)

    if arr[mid] == x
        return mid
    
    elseif arr[mid] < x
        return binary_search(arr, mid + 1, high, x)
    
    else
        return binary_search(arr, low, mid - 1, x)
    end
end

#radix sort
function radix_sort_descending(nums)
    if isempty(nums)
        return []
    end

    # Find the maximum number to determine the number of digits
    max_num = maximum(nums)
    exp = 1  # Exponent for the current digit we're sorting on

    # This will loop until we've sorted by every digit
    while max_num ÷ exp > 0
        # Use a counting sort for each digit position
        counting_sort_by_digit(nums, exp)
        exp *= 10  # Move to the next digit
    end

    return nums
end

function counting_sort_by_digit(nums, exp)
    n = length(nums)
    # Output array that will have sorted values
    output = zeros(Int, n)
    # Initialize count array
    count = zeros(Int, 10)

    # Store the count of occurrences in count[]
    for i in 1:n
        index = (nums[i] ÷ exp) % 10
        count[index + 1] += 1
    end

    # Change count so that it now contains the actual position in output[]
    # To sort in descending order, reverse the accumulation direction
    for i in 9:-1:1
        count[i] += count[i + 1]
    end

    # Build the output array
    for i in n:-1:1
        index = (nums[i] ÷ exp) % 10
        output[count[index + 1]] = nums[i]
        count[index + 1] -= 1
    end

    # Copy the output array to nums[], so that nums contains sorted numbers
    for i in 1:n
        nums[i] = output[i]
    end
end

numbers = [1, 5, 8, 3, 2, 0, 4, 6, 10, 11, 23, 56, 78, 12, 43, 54, 21, 32, 45, 89, 98, 76, 57, 34, 29]

#radix sort
random_numbers = [1, 5, 8, 3, 2, 0, 4, 6, 10, 11, 23, 56, 78, 12, 43, 54, 21, 32, 45, 89, 98, 76, 57, 34, 29]
radix_sort_descending(random_numbers)
println("Sorted list in descending order(radix): ", random_numbers)

#bubble_sort
bubble_sort(numbers)
print("Sorted List(bubble): ", numbers,"\n")


#binary_search (numbers have to be sorted)
x = 4
result = binary_search(numbers, 1, length(numbers) , x)
if result != -1
    print("Element is present at index ", result,"\n")
else
    print("Element not found\n")
end



