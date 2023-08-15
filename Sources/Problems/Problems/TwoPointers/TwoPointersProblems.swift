public enum TwoPointersProblems {
    public static var pairWithTargtSum: Problem<([Int], Int), [Int]> {
        return Problem(name: "Paith with Target Sum",
                       description: """
Given an array of numbers sorted in ascending order and a target sum, find a pair in the array whose sum is equal to the given target.

Write a function to return the indices of the two numbers (i.e. the pair) such that they add up to the given target.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: ([1,2,3,4,6], 6), output: [1,3]),
                        .init(input: ([2,5,9,11], 11), output: [0,2])
                       ])
    }
    
    public static var removeDuplicates: Problem<[Int], Int> {
        return Problem(name: "Remove Duplicates",
                       description: """
Given an array of sorted numbers, remove all duplicate number instances from it in-place, such that each element appears only once. The relative order of the elements should be kept the same and you should not use any extra space so that the solution has a space complexity of .

Move all the unique elements at the beginning of the array and after moving return the length of the subarray that has no duplicate in it.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: [2,3,3,3,6,9,9], output:4),
                        .init(input: [2,2,2,11], output:2)
                       ])
    }
    
    public static var tripletSumToZero: Problem<[Int], [[Int]]> {
        return Problem(name: "Triplet Sum To Zero",
                       description: """
    Given an array of unsorted numbers, find all unique triplets in it that add up to zero.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: [-3, 0, 1, 2, -1, 1, -2], output: [[-3, 1, 2], [-2, 0, 2], [-2, 1, 1], [-1, 0, 1]]),
                        .init(input: [-5, 2, -1, -2, 3], output: [[-5, 2, 3], [-2, -1, 3]])
                       ])
    }
    
    public static var tripletSumCloseToTarget: Problem<(nums: [Int], target: Int), Int> {
        return Problem(name: "Triplet Sum Close to Target",
                       description: """
    Given an array of unsorted numbers and a target number, find a triplet in the array whose sum is as close to the target number as possible, return the sum of the triplet. If there are more than one such triplet, return the sum of the triplet with the smallest sum.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: (nums: [-1, 0, 2, 3], target: 3), output: 2),
                        .init(input: (nums: [-3, -1, 1, 2], target: 1), output: 0),
                        .init(input: (nums: [1, 0, 1, 1], target: 100), output: 3),
                        .init(input: (nums: [0, 0, 1, 1, 2, 6], target: 5), output: 4)
                       ])
    }
    
    public static var tripletWithSmallerSum: Problem<(nums: [Int], target: Int), Int> {
        return Problem(name: "Triplets with Smaller Sum",
                       description: """
    Given an array arr of unsorted numbers and a target sum, count all triplets in it such that arr[i] + arr[j] + arr[k] < target where i, j, and k are three different indices. Write a function to return the count of such triplets.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: (nums: [-1, 0, 2, 3], target: 3), output: 2),
                        .init(input: (nums: [-1, 4, 2, 1, 3], target: 5), output: 4),
                       ])
    }
    
    public static var subArraysWithProductLessThanATarget: Problem<(nums: [Int], target: Int), [[Int]]> {
        return Problem(name: "Triplets with Smaller Sum",
                       description: """
    Given an array with positive numbers and a positive target number, find all of its contiguous subarrays whose product is less than the target number.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: (nums: [2, 5, 3, 10], target: 30),
                              output: [[2], [5], [2, 5], [3], [5, 3], [10] ]),
                        .init(input: (nums: [8, 2, 6, 5], target: 50),
                              output:[ [8], [2], [8, 2], [6], [2, 6], [5], [6, 5] ]),
                       ])
    }
    
    public static var dutchNationalFlag: Problem<[Int], [Int]> {
        return Problem(name: "Dutch National Flag Problem (medium)",
                       description: """
        Given an array containing 0s, 1s and 2s, sort the array in-place. You should treat numbers of the array as objects, hence, we can’t count 0s, 1s, and 2s to recreate the array.

        The flag of the Netherlands consists of three colors: red, white and blue; and since our input array also consists of three different numbers that is why it is called Dutch National Flag problem.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: [1, 0, 2, 1, 0],
                              output: [0, 0, 1, 1, 2]),
                        .init(input: [2, 2, 0, 1, 2, 0],
                              output:[0, 0, 1, 2, 2, 2]),
                       ])
    }
    
    public static var quadrupleSumToTarget: Problem<(nums: [Int], target: Int), [[Int]]> {
        return Problem(name: "Quadruple Sum to Target (medium)",
                       description: """
            Given an array of unsorted numbers and a target number, find all unique quadruplets in it, whose sum is equal to the target number.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: (nums: [4, 1, 2, -1, 1, -3], target: 1),
                              output: [[-3, -1, 1, 4], [-3, 1, 1, 2] ]),
                        .init(input: (nums: [2, 0, -1, 1, -2, 2], target: 2),
                              output:[ [-2, 0, 2, 2], [-1, 0, 1, 2] ]),
                       ])
    }
}
