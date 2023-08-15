//
//  BiggestIsland.swift
//  AppTests
//
//  Created by Ryan Crosby on 8/17/23.
//

import Problems
import ProblemsAssertions
import XCTest

func islandSize(_ ocean: inout [[Int]], row: Int, col: Int) -> Int {
    print("sizing land at : \(row),\(col)")

    guard ocean.indices.contains(row) else {
        print("invalid row: size 0")
        return 0
    }
    guard ocean[0].indices.contains(col) else {
        print("invalid col: size 0")
        return 0
    }
    
    guard ocean[row][col] == 1 else {
        print("no land: size 0")
        return 0
    }
    
    ocean[row][col] = 0
    return islandSize(&ocean, row: row - 1, col: col) +
    islandSize(&ocean, row: row + 1, col: col) +
    islandSize(&ocean, row: row, col: col - 1) +
    islandSize(&ocean, row: row, col: col + 1) +
    1
}

final class BiggestIsland: XCTestCase {

    func testBiggestIsland() throws {
        let problem = MatrixTraversal.biggestIsland
        problem.testImplementation(againstTestCase: 0) {matrix in
            var ocean = matrix
            var largestIsland = 0
            print(ocean)
            for row in 0..<ocean.count {
                for col in 0..<ocean[row].count {
                    if ocean[row][col] == 1 {
                        print("found land: \(row),\(col)")
                        let size = islandSize(&ocean, row: row, col: col)
                        if size > largestIsland {
                            largestIsland = size
                        }
                    }
                }
            }
            
            
            return largestIsland
        }.assert()
    }

    func perimeter(_ matrix: inout [[Int]], x: Int, y: Int) -> (Int)  {
        guard x >= 0, x < matrix.count,
              y >= 0, y < matrix[0].count else {
            return 1
        }
        
        guard matrix[x][y] == 1 else {
            if matrix[x][y] == 0 {
                return 1
            }
            return 0
        }
        
        matrix[x][y] = 2
        
        let perimeter = perimeter(&matrix, x: x - 1, y: y) +
        perimeter(&matrix, x: x + 1, y: y) +
        perimeter(&matrix, x: x, y: y - 1) +
        perimeter(&matrix, x: x, y: y + 1)
        
        return perimeter
    }

    func testMatrixTraversalChallenge1() {
        let firstLand: ([[Int]]) -> (Int, Int) = { matrix in
            return (0, 0)
        }

        let problem = MatrixTraversal.problemChallenge1
        
        problem.testImplementation { matrix in
            var matrix = matrix
            let landCoord = firstLand(matrix)
            
            return self.perimeter(&matrix, x: landCoord.0, y: landCoord.1)
        }.assert()
        
    }

}
