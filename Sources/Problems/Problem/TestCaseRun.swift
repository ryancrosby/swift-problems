public extension Problem {
    struct TestCaseRun: CustomDebugStringConvertible {
        public var debugDescription: String { "Passed: \(passed)" }
        
        public let testCase: TestCase
        public let result: Output
        
//        init(testCase: TestCase, result: Output) {
//            self.testCase = testCase
//            self.result = result
//        }
        
        var passed: Bool { result == testCase.output }
    }
    
    struct Test: CustomDebugStringConvertible {
        public var debugDescription: String { "Passed: \(passed)\n\t\(testRuns)" }
        
        public let testRuns: [TestCaseRun]
        
//        init(testRuns: [TestCaseRun]) {
//            self.testRuns = testRuns
//        }
        
        public var passed: Bool {
            guard !testRuns.isEmpty else { return false }
            
            return testRuns.filter { !$0.passed }.isEmpty
        }
    }
}
