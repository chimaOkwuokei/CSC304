// for (int i = 0; i < numbers.Length; i++)
// {
//   Console.WriteLine(numbers[i]);
// }

using System.Configuration.Assemblies;
using System.Globalization;
using System.Security.Cryptography.X509Certificates;

//bubble_sort
static void bubble_sort(List<int> a)
{
    // foreach (int i in a){
    // Console.WriteLine($"Hello, {i}!");
    // }
    int n = a.Count;
    Console.WriteLine($"{n}");

    for (int i = 0; i < n - 1; i++)
    {
        for (int j = 0; j < (n - i - 1); j++)
        {
            if (a[j] > a[j + 1])
            {
                int temp = a[j]; // Store the first element in a temporary variable
                a[j] = a[j + 1];   // Assign the second element to the first position
                a[j + 1] = temp;  // Assign the stored value (original first element) to the second position
            }
        }
    }


}

//binary search
static int binary_search(List<int> arr, int low, int high, int x)
{
    if (low > high)
    {
        return -1;
    }

    int mid = (low + high) / 2;

    if (arr[mid] == x)
    {
        return mid;
    }
    else if (arr[mid] < x)
    {
        return binary_search(arr, mid + 1, high, x);
    }
    else
    {
        return binary_search(arr, low, mid - 1, x);
    }
}


//radix_sort
static void RadixSortAscending(List<int> nums)
{
    if (nums.Count == 0)
        return;

    // Find the maximum number to determine the number of digits
    int maxNum = FindMax(nums);
    int exp = 1;  // Exponent to determine which digit to sort by

    // Loop until we've sorted by every digit
    while (maxNum / exp > 0)
    {
        CountingSortByDigit(nums, exp);
        exp *= 10;  // Move to the next digit
    }
}

static void CountingSortByDigit(List<int> nums, int exp)
{
    int n = nums.Count;
    List<int> output = new List<int>(new int[n]);  // Output array for sorted values
    int[] count = new int[10];  // Count array for digits (0-9)

    // Determine the index of each number based on the current digit (exp)
    for (int i = 0; i < n; i++)
    {
        int index = (nums[i] / exp) % 10;
        count[index]++;
    }

    // descending part basically Accumulate counts to determine final positions in the sorted array
    for (int i = 8; i >= 0; i--)
    {
        count[i] += count[i + 1];
    }

    // Build the output list based on the sorted positions
    for (int i = n - 1; i >= 0; i--)
    {
        int index = (nums[i] / exp) % 10;
        int pos = count[index] - 1;  // Correct position in the output list
        output[pos] = nums[i];  // Place the element in the correct position
        count[index]--;  // Decrease the count for this digit
    }

    // Copy the output list back to nums to reflect the sorted order
    for (int i = 0; i < n; i++)
    {
        nums[i] = output[i];
    }
}

static int FindMax(List<int> nums)
{
    int maxNum = int.MinValue;
    foreach (int num in nums)
    {
        if (num > maxNum)
            maxNum = num;
    }
    return maxNum;
}
// Calling the function
List<int> numbers = [1, 5, 8, 3, 2, 0, 4, 6, 10, 11, 23, 56, 78, 12, 43, 54, 21, 32, 45, 89, 98, 76, 57, 34, 29];

//radix sort
List<int> random_numbers = [1, 5, 8, 3, 2, 0, 4, 6, 10, 11, 23, 56, 78, 12, 43, 54, 21, 32, 45, 89, 98, 76, 57, 34, 29];
RadixSortAscending(random_numbers);
Console.WriteLine($"The sorted list(radix): ");
foreach (int j in random_numbers)
{
    Console.Write($"{j},");
}
Console.WriteLine("\n");

//bubble sort
bubble_sort(numbers);
Console.WriteLine($"The sorted list(bubble): ");
foreach (int i in numbers)
{
    Console.Write($"{i},");
}
Console.WriteLine("\n");


//binary search
int x = 4;
int result = binary_search(numbers, 0, numbers.Count, x);

if (result != -1)
{
    Console.WriteLine($"Element is prsent at index {result}");
}
else
{
    Console.WriteLine($"Element not found");
}
