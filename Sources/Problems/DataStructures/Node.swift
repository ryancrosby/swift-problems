import Foundation
public final class Node<NV>: NSObject, LinkedListNode {
    public typealias AnyValue = NV
    
    public var value: NV
    public var next: Node<NV>?
    
    public init(value: NV, next: Node<NV>?) {
        self.next = next
        self.value = value
    }
    
    public static func fromArray(_ list: [NV]) -> Node<NV>? {
        let linkedList = list.reversed().reduce(Optional<Node<NV>>.none) { partialResult, value in
            return Node(value: value, next: partialResult)
        }
        return linkedList
    }
    
    public func toArray() -> [NV] {
        var list = [NV]()
        var childNode: Node<NV>? = self
        while childNode != nil {
            list.append(self.value)
            childNode = childNode!.next
        }
        return list
    }
}
