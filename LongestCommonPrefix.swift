/*
 Problem: Longest Common Prefix

 Description:
 Given an array of strings, find the longest common prefix
 shared by all strings.

 If there is no common prefix, return an empty string.

 Example 1:
 Input:  ["flower", "flow", "flight"]
 Output: "fl"

 Example 2:
 Input:  ["dog", "racecar", "car"]
 Output: ""

 Approach: Horizontal Scanning

 Logic:
 1. Take the first string as the reference.
 2. Build the prefix one character at a time.
 3. Check whether every string starts with the current prefix.
 4. If any string does not match, remove the last character
    and return the remaining valid prefix.
 5. If all characters match, return the complete prefix.

 Time Complexity: O(n * m²)
 Space Complexity: O(m)

 n = Number of strings
 m = Length of the first string (or bounded by the shortest string)
*/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        // Handle an empty input array.
        guard let first = strs.first else {
            return ""
        }

        // Stores the common prefix as we build it.
        var prefix = ""

        // Take each character from the first string.
        for char in first {

            // Add the current character to the prefix.
            prefix.append(char)

            // Check whether every string starts with this prefix.
            for str in strs {

                // If any string does not match the prefix,
                // the newly added character is not common.
                if !str.hasPrefix(prefix) {

                    // Remove the invalid last character.
                    prefix.removeLast()

                    // Return the longest valid common prefix.
                    return prefix
                }
            }
        }

        // All characters matched across every string.
        return prefix
    }
}
