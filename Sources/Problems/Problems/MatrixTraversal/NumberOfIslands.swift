extension MatrixTraversal {
    public static var numberOfIslands: Problem<[[Int]], Int> {
        return Problem(name: "Number of Islands",
                       description: """
Given a 2D array (i.e., a matrix) containing only 1s (land) and 0s (water), count the number of islands in it.

An island is a connected set of 1s (land) and is surrounded by either an edge or 0s (water). Each cell is considered connected to other cells horizontally or vertically (not diagonally).
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: [[0, 1, 1, 1, 0],
                                      [0, 0, 0, 1, 1],
                                      [0, 1, 1, 1, 0],
                                      [0, 1, 1, 0, 0],
                                      [0, 0, 0, 0, 0]], output: 1),
                        .init(input: [[1, 1, 1, 0, 0],
                                      [0, 1, 0, 0, 1],
                                      [0, 0, 1, 1, 0],
                                      [0, 0, 1, 0, 0],
                                      [0, 0, 1, 0, 0]], output: 3),
                        .init(input:
                                [[0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0],
                                 [0, 0, 0, 0, 0]], output: 0)
                       ])
    }
}
