//: [Previous](@previous)

import Problems

let closedIslands = MatrixTraversal.numberOfClosedIslands
    
let testCases = closedIslands.testImplementation { matrix in
    var ocean = matrix
    var islands = 0
    
    for x in 0..<ocean.count {
        for y in 0..<ocean[0].count {
            if ocean[x][y] == 1 {
                print("checking island at \(x),\(y)")
                if isIslandClosed(&ocean, x: x, y: y) {
                    islands += 1
                }
            }
        }
    }
    
    return islands
}

func isIslandClosed(_ ocean: inout [[Int]], x: Int, y: Int) -> Bool {
    guard x >= 0, x < ocean.count else {
        print("(\(x),\(y)) out of bounds, not closed")
        return false
    }
    guard y >= 0, y < ocean[0].count else {
        print("(\(x),\(y)) out of bounds, not closed")
        return false
    }
    
    guard ocean[x][y] == 1 else {
        print("(\(x),\(y)) in bounds, is closed")
        return true
    }
    
    print("(\(x),\(y)) checking children")
    ocean[x][y] = 0
    let childrenClosedValues = [
        isIslandClosed(&ocean, x: x - 1, y: y),
        isIslandClosed(&ocean, x: x + 1, y: y),
        isIslandClosed(&ocean, x: x, y: y - 1),
        isIslandClosed(&ocean, x: x, y: y + 1)
    ]
    let childrenClosed = childrenClosedValues.filter { $0 }.count == childrenClosedValues.count
    
    print("(\(x),\(y)) children are closed \(childrenClosed)")
    
    return childrenClosed
}

print(testCases.testRuns[0].testCase.input)
print(testCases.testRuns[0].testCase.output)
print(testCases.testRuns[0].result)
//: [Next](@next)
