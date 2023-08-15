public extension Problem {
    struct TestCase {
        public let input: Input
        public let output: Output
        
        func test(_ fn: @escaping (Input) -> Output) -> TestCaseRun {
            let result = fn(input)
            return .init(testCase: self, result: result)
        }
    }
}
