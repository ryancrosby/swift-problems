//: [Previous](@previous)

import Problems

let biggestIsland = MatrixTraversal.biggestIsland

func islandSize(_ ocean: inout [[Int]], row: Int, col: Int) -> Int {
    guard ocean.indices.contains(row) else {
        return 0
    }
    guard ocean[0].indices.contains(col) else {
        return 0
    }
    
    guard ocean[row][col] == 1 else {
        return 0
    }
    
    ocean[row][col] = 0
    var childSizes = islandSize(&ocean, row: row - 1, col: col) +
        islandSize(&ocean, row: row + 1, col: col) +
        islandSize(&ocean, row: row, col: col - 1) +
        islandSize(&ocean, row: row, col: col + 1)
    //    return 1
    return childSizes + 1
}

func islandSizeBF(_ ocean: inout [[Int]], row: Int, col: Int) -> Int {
    
    var neighbors: [[Int]] = [[row, col]]
    var size = 0
    
    while !neighbors.isEmpty {
        let r = neighbors[0][0]
        let c = neighbors[0][1]
        neighbors.removeFirst()
        
        guard ocean.indices.contains(r) else {
            continue
        }
        guard ocean[0].indices.contains(c) else {
            continue
        }
        
        guard ocean[r][c] == 1 else {
            continue
        }
        
        ocean[r][c] = 0
        size += 1
        neighbors.append([r + 1, c])
        neighbors.append([r - 1, c])
        neighbors.append([r, c + 1])
        neighbors.append([r, c - 1])
    }
    return size
}


biggestIsland.testImplementation { matrix in
    var ocean = matrix
    var largestIsland = 0
    
    print(ocean)
    
    for row in 0..<ocean.count {
        for col in 0..<ocean[row].count {
            if ocean[row][col] == 1 {
                let size = islandSizeBF(&ocean, row: row, col: col)
                if size > largestIsland {
                    largestIsland = size
                }
            }
        }
    }
    
    
    return largestIsland
}
//: [Next](@next)
