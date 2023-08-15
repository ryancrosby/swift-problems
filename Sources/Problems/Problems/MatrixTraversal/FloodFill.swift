extension MatrixTraversal {
    public static var floodFill: Problem<([[Int]], Int, Int, Int), [[Int]]> {
        return Problem(name: "Flood Fill",
                       description: """
Any image can be represented by a 2D integer array (i.e., a matrix) where each cell represents the pixel value of the image.

Flood fill algorithm takes a starting cell (i.e., a pixel) and a color. The given color is applied to all horizontally and vertically connected cells with the same color as that of the starting cell. Recursively, the algorithm fills cells with the new color until it encounters a cell with a different color than the starting cell.

Given a matrix, a starting cell, and a color, flood fill the matrix.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: ([[0,1,1,1,0],[0,0,0,1,1],[0,1,1,1,0],[0,1,1,0,0],[0,0,0,0,0]], 1, 3, 2),
                              output: [[0,2,2,2,0],[0,0,0,2,2],[0,2,2,2,0],[0,2,2,0,0],[0,0,0,0,0]]),
                        .init(input: ([[0,0,0,0,0],[0,0,0,0,0],[0,0,1,1,0],[0,0,1,0,0],[0,0,1,0,0]], 3, 2, 5),
                              output: [[0,0,0,0,0],[0,0,0,0,0],[0,0,5,5,0],[0,0,5,0,0],[0,0,5,0,0]]),
                        .init(input:
                                ([[1]], 0, 0, 2), output: [[2]])
                       ])
    }
}
