
public enum SlidingWindowProblems {
    public static var maximumSumSubarrayOfSizeK: Problem<([Int], Int), Int> {
        return Problem(name: "Maximum Sum Subarray of Size K",
                       description: """
Given an array of positive numbers and a positive number 'k,' find the maximum sum of any contiguous subarray of size 'k'.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input:([2,1,5,1,3,2], 3) , output: 9),
                        .init(input:([2, 3, 4, 1, 5], 2) , output: 7),
                       ])
    }
    
    public static var longestSubarrayWithOnesAfterReplacement: Problem<([Int], Int), Int> {
        return Problem(name: "Longest Subarray with Ones after Replacement",
                       description: """
Given an array containing 0s and 1s, if you are allowed to replace no more than ‘k’ 0s with 1s, find the length of the longest contiguous subarray having all 1s.
""",
                       difficulty: .difficult,
                       testCases: [
                        .init(input:([0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1], 2) , output: 6),
                        .init(input:([0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1], 3) , output: 9),
                       ])
    }
}
