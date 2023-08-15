import Problems
import XCTest

public enum ProblemsAssertions {
    public static let version = "0.0.1"
}

extension Problem.Test {
    public func assert(message: () -> String = { "is incorrect" },
                       file: StaticString = #filePath,
                       line: UInt = #line) {
        
        if !passed {
            print(testRuns)
            XCTFail(message(), file: file, line: line)
        }
    }
}
