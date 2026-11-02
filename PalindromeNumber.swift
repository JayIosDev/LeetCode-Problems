class Solution {
    func isPalindrome(_ x: Int) -> Bool {

        // Negative numbers cannot be palindromes because
        // the minus sign appears only at the beginning.
        if x < 0 {
            return false
        }

        // A number ending in zero cannot be a palindrome,
        // unless the number itself is zero.
        if x % 10 == 0 && x != 0 {
            return false
        }

        // Keep the original number for the final comparison.
        var num = x

        // Stores the number with its digits reversed.
        var reversed = 0

        // Continue until all digits have been processed.
        while num > 0 {

            // Extract the last digit and append it to reversed.
            reversed = (reversed * 10) + (num % 10)

            // Remove the last digit from num.
            num /= 10
        }

        // If original and reversed numbers match, it is a palindrome.
        return x == reversed
    }
}

/*
 
 Time complexity explanation
 Time Complexity: \(O(\log_{10} x)\) for positive x.
 - Each loop iteration processes one digit.
 - num /= 10 removes one decimal digit.
 - A number with d digits requires d iterations.
 - The number of digits is approximately \(\log_{10}(x)\).
 Therefore, the time complexity is \(O(d)\), commonly expressed as \(O(\log x)\).
 
 Space complexity explanation
 Space Complexity: \(O(1)\)
 - We use only two integer variables: num and reversed.
 - No additional array, dictionary, or string is created.
 - Memory usage stays constant as the number of digits increases, assuming integer arithmetic remains within range.
 
 */
