import Foundation

public typealias ProblemInput = Any
public typealias ProblemOutput = CustomStringConvertible & Equatable & Hashable

public struct Problem<Input, Output> where Input: ProblemInput, Output: ProblemOutput {
    public enum Difficulty {
        case veryEasy
        case easy
        case medium
        case difficult
    }
    public let name: String
    public let description: String
    public let difficulty: Difficulty
    public let testCases: [TestCase]
    
    public init(name: String, description: String, difficulty: Difficulty, testCases: [TestCase]) {
        self.name = name
        self.description = description
        self.difficulty = difficulty
        self.testCases = testCases
    }
    
    public func testImplementation(_ fn: @escaping (Input) -> Output) -> Test {
        Test(testRuns: testCases.map { $0.test(fn) })
    }
    
    public func testImplementation(againstTestCase testCase: Int, implementation fn: @escaping (Input) -> Output) -> Test {
        Test(testRuns: [testCases[testCase]].map { $0.test(fn) })
    }
    
}

@available(iOS 15, *)
extension Problem: CustomPlaygroundDisplayConvertible {
    public var playgroundDescription: Any {
        AttributedString(stringLiteral: """
\(name)

\(description)
""")
    }
}
