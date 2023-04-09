// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "test",
    products: [
        .library(name: "test",
            targets: ["test"]),
    ],
    dependencies: [
      .package(name: "JavaScriptKit", url: "https://github.com/kateinoigakukun/JavaScriptKit.git", .revision("1edcf70")),
    ],
    targets: [
        .target(
            name: "testWeb",
            dependencies: ["test", "JavaScriptKit"]),
        .target(name: "test", dependencies: []),
        .testTarget(name: "testTests", dependencies: [
           "test"
        ]),
    ]
)
