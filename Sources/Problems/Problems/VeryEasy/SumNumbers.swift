extension Problem {
    public static func sumNumbers() -> Problem where Input == [Int], Output == Int {
        .init(name: "Sum Numbers",
              description: "Return the sum (addition) of numbers.",
              difficulty: .veryEasy,
              testCases:  [
                .init(input: [1,3], output: 4),
                .init(input: [-1,1], output: 0),
                .init(input: [], output: 0),
                .init(input: [1,0,-1], output: 0),
                .init(input: [1,3,5], output: 9)
              ])
    }
}
