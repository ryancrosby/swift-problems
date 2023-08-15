//
//  SlidingWindowTestCases.swift
//  AppTests
//
//  Created by Ryan Crosby on 8/24/23.
//

import XCTest
@testable import Problems

final class SlidingWindowTestCases: XCTestCase {
    func testMaximumSumSubarrayOfSizeK() {
        let problem = SlidingWindowProblems.maximumSumSubarrayOfSizeK
        problem.testImplementation { input in
            let (nums, k) = input

            var maxSum = Int.min
            
            var windowSum = 0
            for i in 0..<k {
                windowSum += nums[i]
            }
            maxSum = windowSum
            
            for i in k..<nums.count {
                windowSum -= nums[i - k]
                windowSum += nums[i]
                if windowSum > maxSum {
                    maxSum = windowSum
                }
            }
            
            return maxSum
        }.assert()
    }
    
    func testLongestSubarrayWithOnesAfterReplacement() {
        let problem = SlidingWindowProblems.longestSubarrayWithOnesAfterReplacement
        problem.testImplementation { input in
            let (nums, k) = input
            
            var zeroCount = 0
            var startWindow = 0
            var maxWindowLength = 0
            
            for endWindow in 0..<nums.count {
                if nums[endWindow] == 0 {
                    zeroCount += 1
                }
                
                while zeroCount > k {
                    if nums[startWindow] == 0 {
                        zeroCount -= 1
                    }
                    startWindow += 1
                }
                
                let windowLength = endWindow - startWindow + 1
                if windowLength > maxWindowLength {
                    maxWindowLength = windowLength
                }
            }
            
            return maxWindowLength
        }.assert()
    }
}
