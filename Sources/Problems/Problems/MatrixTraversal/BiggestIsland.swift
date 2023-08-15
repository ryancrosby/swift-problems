extension MatrixTraversal {
    public static var biggestIsland: Problem<[[Int]], Int> {
        return Problem(name: "Biggest Island",
                       description: """
Given a 2D array (i.e., a matrix) containing only 1s (land) and 0s (water), find the biggest island in it. Write a function to return the area of the biggest island.

An island is a connected set of 1s (land) and is surrounded by either an edge or 0s (water). Each cell is considered connected to other cells horizontally or vertically (not diagonally).
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: [[1, 1, 1, 0, 0],
                                      [0, 1, 0, 0, 1],
                                      [0, 0, 1, 1, 0],
                                      [0, 1, 1, 0, 0],
                                      [0, 0, 1, 0, 0]],
                              output: 5),
                        .init(input: [[1, 1, 0, 1, 0],
                                      [0, 1, 1, 0, 1],
                                      [1, 0, 0, 1, 0],
                                      [0, 1, 0, 0, 1],
                                      [1, 0, 1, 1, 0]],
                              output: 4),
                        .init(input:
                                [[0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0]], output: 0)
                       ])
    }
}
