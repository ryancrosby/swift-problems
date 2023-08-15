import Foundation

extension FastAndSlowPointers {
    public static var startOfLinkedListCycle: Problem<Node<Int>, Node<Int>> {
        
        var endOfList1 = Node(value: 6, next: nil)
        var list1 = endOfList1
        list1 = .init(value: 5, next: list1)
        list1 = .init(value: 4, next: list1)
        list1 = .init(value: 3, next: list1)
        endOfList1.next = list1
        var startOfCycle1 = list1
        list1 = .init(value: 2, next: list1)
        list1 = .init(value: 1, next: list1)

        var endOfList2 = Node(value: 6, next: nil)
        var list2 = endOfList2
        list2 = .init(value: 5, next: list2)
        list2 = .init(value: 4, next: list2)
        endOfList2.next = list2
        var startOfCycle2 = list2
        list2 = .init(value: 3, next: list2)
        list2 = .init(value: 2, next: list2)
        list2 = .init(value: 1, next: list2)

        var endOfList3 = Node(value: 6, next: nil)
        var list3 = endOfList3
        list3 = .init(value: 5, next: list3)
        list3 = .init(value: 4, next: list3)
        list3 = .init(value: 3, next: list3)
        list3 = .init(value: 2, next: list3)
        list3 = .init(value: 1, next: list3)
        endOfList3.next = list3
        var startOfCycle3 = list3
        
        return Problem(name: "Start of LinkedList Cycle",
                       description: """
Given the head of a Singly LinkedList that contains a cycle, write a function to find the starting node of the cycle.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: list1, output: startOfCycle1),
                        .init(input: list2, output: startOfCycle2),
                        .init(input: list3, output: startOfCycle3),
                       ])
    }
}
