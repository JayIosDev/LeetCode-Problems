class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        // Store each number and its index.
        // Key = number, Value = index
        var dict: [Int: Int] = [:]
        
        // Traverse the array once.
        for (index, num) in nums.enumerated() {
            
            // Find the number needed to reach the target.
            let complement = target - num
            
            // Check whether the complement was seen earlier.
            if let previousIndex = dict[complement] {
                
                // Return the indices of both numbers.
                return [previousIndex, index]
            }
            
            // Store the current number and its index.
            // Insert only after checking to avoid reusing the same element.
            dict[num] = index
        }
        
        // No valid pair found.
        return []
    }
}

/*
 
 Time complexity explanation
 Time Complexity: \(O(n)\) average
 - We traverse the array only once using enumerated().
 - For every element, we calculate the complement in \(O(1)\) time.
 - Dictionary lookup and insertion take \(O(1)\) time on average.
 - Therefore, for n elements, the total average time complexity is \(O(n)\).
 Example: If the array has 1,000 elements, we process each element at most once before finding the answer or finishing the loop.
 
 Note: Dictionary operations can occasionally take longer due to hash collisions or resizing, but \(O(n)\) is the standard average-case analysis.
 Space complexity explanation
 Space Complexity: \(O(n)\)
 - The dictionary stores numbers and their corresponding indices.
 - In the worst case, we may store almost all n elements before finding the matching pair.
 - Therefore, the additional space used by the dictionary grows proportionally with the input size.
 
 
 */
