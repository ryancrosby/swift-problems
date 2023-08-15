import Foundation

extension FastAndSlowPointers {
    public static var middleOfTheLinkedList: Problem<Node<Int>, Node<Int>> {
        
        let list1Middle = Node(value: 3, next: .init(value: 4, next: .init(value: 5, next: nil)))
        let list1 = Node(value: 1, next: .init(value: 2, next: list1Middle))

        let list2Middle = Node(value: 4, next: .init(value: 5, next: .init(value: 6, next: nil)))
        let list2 = Node(value: 1, next: .init(value: 2, next: .init(value: 3, next: list2Middle)))

        let list3Middle = Node(value: 4, next: .init(value: 5, next: .init(value: 6, next: .init(value: 7, next: nil))))
        let list3 = Node(value: 1, next: .init(value: 2, next: .init(value: 3, next: list3Middle)))

        return Problem(name: "Middle of the LinkedList",
                       description: """
Given the head of a Singly LinkedList, write a method to return the middle node of the LinkedList.

If the total number of nodes in the LinkedList is even, return the second middle node.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: list1, output: list1Middle),
                        .init(input: list2, output: list2Middle),
                        .init(input: list3, output: list3Middle),
                       ])
    }
}
