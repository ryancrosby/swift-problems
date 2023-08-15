// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Problems",
    platforms: [.iOS(.v15),.macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "Problems", targets: ["Problems"]),
        .library(name: "ProblemsUI", targets: ["ProblemsUI"]),
        .library(name: "ProblemsAssertions", targets: ["ProblemsAssertions"])
    ],
    targets: [
        .target(
            name: "Problems"),
        .testTarget(
            name: "ProblemsTests",
            dependencies: ["Problems"]),
        .target(name: "ProblemsUI", dependencies: ["Problems"]),
        .target(name: "ProblemsAssertions", dependencies: ["Problems"])
    ]
)
