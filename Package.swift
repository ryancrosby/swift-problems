// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Solver",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Solver",
            targets: ["Solver"]),
        .library(name: "Problems", targets: ["Problems"])
    ],
    targets: [
        .target(
            name: "Solver"),
        .testTarget(
            name: "SolverTests",
            dependencies: ["Solver"]),
        .target(
            name: "Problems"),
        .testTarget(name: "ProblemsTests", dependencies: ["Problems"])
    ]
)
