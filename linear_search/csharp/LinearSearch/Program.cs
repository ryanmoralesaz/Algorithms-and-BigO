using System;

class Program
{
    // Linear Search Function
    public static int LinearSearch(int[] arr, int target)
    {
        for (int i = 0; i < arr.Length; i++)
        {
            if (arr[i] == target)
            {
                return i; // Element found, return index
            }
        }
        return -1; // Element not found
    }

    static void Main(string[] args)
    {
        int[] arr = { 3, 45, 1, 2, 99 };
        int target = 1;

        int result = LinearSearch(arr, target);

        if (result != -1)
        {
            Console.WriteLine($"Element found at index: {result}");
        }
        else
        {
            Console.WriteLine("Element not found in the array");
        }
    }
}
