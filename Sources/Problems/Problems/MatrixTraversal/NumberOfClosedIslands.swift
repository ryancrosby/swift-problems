extension MatrixTraversal {
    public static var numberOfClosedIslands: Problem<[[Int]], Int> {
        return Problem(name: "Number of Closed Islands",
                       description: """
You are given a 2D matrix containing only 1s (land) and 0s (water).
                       
                       An island is a connected set of 1s (land) and is surrounded by either an edge or 0s (water). Each cell is considered connected to other cells horizontally or vertically (not diagonally).

                       A closed island is an island that is totally surrounded by 0s (i.e., water). This means all horizontally and vertically connected cells of a closed island are water. This also means that, by definition, a closed island can't touch an edge (as then the edge cells are not connected to any water cell).

                       Write a function to find the number of closed islands in the given matrix.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: [[1,1,0,0,0],[0,1,0,0,0],[0,0,1,1,0],[0,1,1,0,0],[0,0,0,0,0]],
                              output: 1),
                        .init(input: [[0,0,0,0],[0,1,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,0]],
                              output: 2),
                        .init(input:
                                [[0,0,0,0,0],[0,1,1,1,0],[0,1,0,1,0],[0,1,1,1,0],[0,0,0,0,0]], output: 1)
                       ])
    }
}
