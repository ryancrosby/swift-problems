enum VeryEasyProblems {
    public static var reverseLinkedList: Problem<Node<Int>, Node<Int>> {
        return Problem(name: "Reverse the linked list",
                       description: """
Given a linked list, return it reversed.
""",
                       difficulty: .medium,
                       testCases: [
                        .init(input: Node<Int>.fromArray([1,2,3,4,5,6])!, output: Node<Int>.fromArray([6,5,4,3,2,1])!),
                        .init(input: Node<Int>.fromArray([1,6,2,4,3,2])!, output: Node<Int>.fromArray([2,3,4,2,6,1])!),
                       ])
    }
    
}
