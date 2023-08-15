//: [Previous](@previous)

import Problems

let floodFill = MatrixTraversal.floodFill

let test = floodFill.testImplementation { input in
    var matrix = input.0
    let startRow = input.1
    let startCol = input.2
    let replace = input.3
    
    var neighbors: [[Int]] = [[startRow, startCol]]
    while !neighbors.isEmpty {
        let x = neighbors[0][0]
        let y = neighbors[0][1]
        neighbors.removeFirst()
        
        guard x >= 0, x < matrix.count else {
            continue
        }
        guard y >= 0, y < matrix[0].count else {
            continue
        }
        
        guard matrix[x][y] == 1 else {
            continue
        }
        
        matrix[x][y] = replace
        neighbors.append([x - 1, y])
        neighbors.append([x + 1, y])
        neighbors.append([x, y - 1])
        neighbors.append([x, y + 1])
    }
    
    return matrix
}

let testRun = test.testRuns[2]

print(testRun.testCase.input)
print(testRun.testCase.output)
print(testRun.result)



//: [Next](@next)
