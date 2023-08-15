extension MatrixTraversal {
    public static var problemChallenge1: Problem<[[Int]], Int> {
        return Problem(name: "Number of Closed Islands",
                       description: """
You are given a 2D matrix containing only 1s (land) and 0s (water).

An island is a connected set of 1s (land) and is surrounded by either an edge or 0s (water). Each cell is considered connected to other cells horizontally or vertically (not diagonally).

There are no lakes on the island, so the water inside the island is not connected to the water around it. A cell is a square with a side length of 1..

The given matrix has only one island, write a function to find the perimeter of that island.
""",
                       difficulty: .easy,
                       testCases: [
                        .init(input: [
                            [1,1,0,0,0],
                            [0,1,0,0,0],
                            [0,1,0,0,0],
                            [0,1,1,0,0],
                            [0,0,0,0,0]],
                              output: 14),
                        .init(input: [
                            [0,0,0,0],
                            [0,1,0,0],
                            [0,1,0,0],
                            [0,1,1,0],
                            [0,1,0,0]],
                              output: 12),
                        .init(input: [
                            [0,0,0,0,0],
                            [0,1,1,1,0],
                            [0,1,0,1,0],
                            [0,1,1,1,0],
                            [0,0,0,0,0]],
                              output: 12)
                       ])
    }
}
