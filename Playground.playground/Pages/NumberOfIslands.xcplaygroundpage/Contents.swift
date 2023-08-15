import Problems
import ProblemsUI
import SwiftUI

let problem = MatrixTraversal.numberOfIslands

problem.testImplementation { matrix in
    var islands = 0
    
    for r in 0..<matrix.count {
        for c in 0..<matrix[r].count {
            // if is land
            if matrix[r][c] == 1 {
                let noneToLeft = c > 0 ? matrix[r][c - 1] == 0 : true
                let noneAbove = r > 0 ? matrix[r - 1][c] == 0 : true
                
                if noneToLeft && noneAbove {
                    islands += 1
                }
            }
        }
    }
    return islands
}

func visitIslandDF(_ matrix: inout [[Int]], row: Int, col: Int) {

    guard row >= 0, row < matrix.count else {
    return
    }
    guard col >= 0, col < matrix[0].count else {
        return
    }
    
    guard matrix[row][col] == 1 else {
        return
    }
    
    matrix[row][col] = 0
    
    visitIslandDF(&matrix, row: row - 1, col: col)
    visitIslandDF(&matrix, row: row + 1, col: col)
    visitIslandDF(&matrix, row: row, col: col + 1)
    visitIslandDF(&matrix, row: row, col: col - 1)
}

problem.testImplementation { matrix in
    
    var ocean = matrix
    var islands = 0
    
    for r in 0..<ocean.count {
        for c in 0..<ocean[r].count {
            // if is island
            if ocean[r][c] == 1 {
                islands += 1
                visitIslandDF(&ocean, row: r, col: c)
            }
        }
    }
    return islands
}


func visitIslandBF(_ matrix: inout [[Int]], row: Int, col: Int) {
    var visits: [[Int]] = [[row, col]]
    
    while !visits.isEmpty {
        let r = visits[0][0]
        let c = visits[0][1]
        visits.removeFirst()
        
        if r >= 0, r < matrix.count,
           c >= 0, c < matrix[0].count,
           matrix[r][c] == 1 {
            matrix[r][c] = 0
            visits.append([r-1,c])
            visits.append([r+1,c])
            visits.append([r,c-1])
            visits.append([r,c+1])
        }
    }
}

problem.testImplementation { matrix in
    print(matrix)
    var ocean = matrix
    var islands = 0
    
    for r in 0..<ocean.count {
        for c in 0..<ocean[r].count {
            // if is island
            if ocean[r][c] == 1 {
                islands += 1
                visitIslandBF(&ocean, row: r, col: c)
            }
        }
    }
    return islands
}
