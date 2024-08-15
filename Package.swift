// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "RequestSwift",
    products: [
        .library(
            name: "RequestSwift",
            targets: ["RequestSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nekohaxx/Socket.swift.git", .upToNextMinor(from: "2.5.0"))
    ],
    targets: [
        .target(
            name: "RequestSwift",
            dependencies: ["SocketSwift"],
            path: "Sources",
            exclude: ["Frameworks"]),
        .testTarget(
            name: "RequestSwiftTests",
            dependencies: ["RequestSwift"]),
    ]
)
