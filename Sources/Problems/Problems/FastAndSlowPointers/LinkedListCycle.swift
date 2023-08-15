extension FastAndSlowPointers {
    public static var linkedListCycle: Problem<Node<Int>, Bool> {
        let validNode = Node<Int>.fromArray([1,2,3,4,5,6])!
        let invalidNode = Node<Int>.fromArray([1,2,3,4,5,6])!
        var lastNode: Node<Int>? = invalidNode
        var middleNode: Node<Int>?
        for i in 0..<5 {
            if i == 2 {
                middleNode = lastNode
            }
            lastNode = lastNode?.next
        }
        lastNode?.next = middleNode
        
        return Problem(name: "LinkedList Cycle",
                       description: """
Given the head of a Singly LinkedList, write a function to determine if the LinkedList has a cycle in it or not.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: validNode, output: false),
                        .init(input: invalidNode, output: true)
                       ])
    }
}
