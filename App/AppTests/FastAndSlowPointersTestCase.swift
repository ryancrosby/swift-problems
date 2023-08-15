//
//  FastAndSlowPointersTestCase.swift
//  AppTests
//
//  Created by Ryan Crosby on 8/20/23.
//

import XCTest
@testable import Problems

final class FastAndSlowPointersTestCase: XCTestCase {

    func testLinkedListCycle() {
        let problem = FastAndSlowPointers.linkedListCycle
        
        problem.testImplementation { node in
            var left: Node<Int>? = node
            var right = node.next
            
            while right != nil {
                left = left?.next
                right = right?.next?.next
                if left == right {
                    return true
                }
            }
            
            return false
        }.assert()
    }
    
    func testStartOfLinkedListCycle() {
        let problem = FastAndSlowPointers.startOfLinkedListCycle
        
        problem.testImplementation { node in
            var headNode = Node(value: -1, next: node)

            while headNode != nil {
                var slow = headNode.next
                var fast = headNode.next?.next
                var foundHead = false
                while slow != fast {
                    if slow == headNode {
                        foundHead = true
                    }
                    slow = slow?.next
                    fast = fast?.next?.next
                }
                if foundHead == true || slow == headNode {
                    return headNode
                } else {
                    headNode = headNode.next!
                }
            }

            return node
        }.assert()
    }
    
    func testHappyNumber() {
        let problem = FastAndSlowPointers.happyNumber
        problem.testImplementation { number in
            let digits = getDigits(number)
            var maybeMagic = number
            var happinessCalcs = Set<Int>()
            while true {
                let happiness = happyCalc(maybeMagic)
                if happinessCalcs.contains(happiness) {
                    return false
                }

                if happiness == 1 {
                    return true
                } else {
                    happinessCalcs.insert(happiness)
                    maybeMagic = happiness
                }
            }
        }.assert()
        
        let problem2 = FastAndSlowPointers.happyNumber
        problem2.testImplementation { number in
            var slow = number
            var fast = number
            while true {
                slow = happyCalc(slow)
                fast = happyCalc(happyCalc(fast))
                if slow == fast {
                    return false
                } else if slow == 1 || fast == 1 {
                    return true
                }
            }
        }.assert()
    }
    
    func testMiddleOfTheLinkedList() {
        let problem = FastAndSlowPointers.middleOfTheLinkedList
        problem.testImplementation { head in
            var slow = Optional.some(head)
            var fast = head.next
            while fast != nil {
                slow = slow?.next
                fast = fast?.next?.next
            }
            return slow!
        }.assert()
    }
    
    func testPalindromeLinkedList() {
        let problem = FastAndSlowPointers.palindromeLinkedList
        problem.testImplementation { head in
            
            var slow = Optional(head)
            var fast = head.next
            var middle = 0
            while fast != nil {
                slow = slow?.next
                fast = fast?.next?.next
                middle += 1
            }
            
            var tail = slow!
            while let nextValue = tail.next?.value {
                tail = .init(value: nextValue, next: tail)
            }
            
            var l1 = Optional(head)
            var l2 = Optional(tail)
            
            while l1 != nil && l2 != nil {
                if l1?.value != l2?.value {
                    return false
                }
                l1 = l1?.next
                l2 = l2?.next
            }
            
            return true
        }.assert()
    }
}

func happyCalc(_ number: Int) -> Int {
    let digits = getDigits(number)
    return digits.reduce(0) { partialResult, digit in
        return (digit * digit) + partialResult
    }
}

func squareNum(_ number: Int) -> Int {
    var n = number
    var sum = 0
    while n > 0 {
        let digit = n % 10
        sum += digit * digit
        n = n / 10
    }
    return sum
}

func getDigits(_ number: Int) -> [Int] {
    var n = number
    var digits = [Int]()
    while n > 0 {
        digits.append(n % 10)
        n = n / 10
    }
    return digits
}

extension Node {
    func containsCycle() -> Bool {
        var left: Node<AnyValue>? = self
        var right = self.next
        
        while right != nil {
            left = left?.next
            right = right?.next?.next
            if left == right {
                return true
            }
        }
        
        return false
    }
}
