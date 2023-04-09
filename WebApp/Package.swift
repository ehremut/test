// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WebApp",
    products: [
        .library(name: "WebApp",
            targets: ["WebApp"]),
    ],
    dependencies: [
      .package(name: "JavaScriptKit", url: "https://github.com/kateinoigakukun/JavaScriptKit.git", .revision("1edcf70")),
    ],
    targets: [
        .target(
            name: "WebAppWeb",
            dependencies: ["WebApp", "JavaScriptKit"]),
        .target(name: "WebApp", dependencies: []),
        .testTarget(name: "WebAppTests", dependencies: [
           "WebApp"
        ]),
    ]
)
