import Foundation

extension FastAndSlowPointers {
    public static var palindromeLinkedList: Problem<Node<Int>, Bool> {
        return Problem(name: "Palindrome LinkedList",
                       description: """
Given the head of a Singly LinkedList, write a method to check if the LinkedList is a palindrome or not.

Your algorithm should use constant space and the input LinkedList should be in the original form once the algorithm is finished. The algorithm should have O(N) time complexity where ‘N’ is the number of nodes in the LinkedList.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: Node<Int>.fromArray([2,4,6,4,2])!, output: true),
                        .init(input: Node<Int>.fromArray([2,4,6,4,2,2])!, output: false),
                       ])
    }
}
