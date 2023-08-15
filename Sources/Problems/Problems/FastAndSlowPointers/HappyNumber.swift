extension FastAndSlowPointers {
    public static var happyNumber: Problem<Int, Bool> {
        return Problem(name: "Happy Number",
                       description: """
Any number will be called a happy number if, after repeatedly replacing it with a number equal to the sum of the square of all of its digits, leads us to number ‘1’. All other (not-happy) numbers will never reach ‘1’. Instead, they will be stuck in a cycle of numbers which does not include ‘1’.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: 23, output: true),
                        .init(input: 12, output: false)
                       ])
    }
}
