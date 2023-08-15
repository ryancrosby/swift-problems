//
//  VeryEasyTestCase.swift
//  AppTests
//
//  Created by Ryan Crosby on 8/24/23.
//

import XCTest
@testable import Problems

final class VeryEasyTestCase: XCTestCase {

    func testReverseLinkedList() {
        let problem = VeryEasyProblems.reverseLinkedList
        problem.testImplementation { head in
            var cur = head
            var prev: Node<Int>?
            while true {
                let next = cur.next
                
                cur.next = prev
                prev = cur
                if next == nil {
                    break
                }
                cur = next!
            }
            return cur
        }.assert()
    }

}
