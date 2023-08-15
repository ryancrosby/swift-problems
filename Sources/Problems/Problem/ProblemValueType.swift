protocol ProblemValueType {
    var displayableValue: String { get }
}

extension Int: ProblemValueType {
    var displayableValue: String { description }
}

extension Array: ProblemValueType where Element == Int {
    var displayableValue: String { map { $0.description }.joined(separator: ",") }
}
