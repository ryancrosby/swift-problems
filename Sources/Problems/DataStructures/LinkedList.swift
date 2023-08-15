public protocol LinkedListNode<AnyValue> {
    associatedtype AnyValue
    
    var value: AnyValue { get set }
    var next: Self? { get set }
    
    static func fromArray(_ list: [AnyValue]) -> Self?
    func toArray() -> [AnyValue]
}
