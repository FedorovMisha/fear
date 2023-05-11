// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "Fear",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Fear",
            targets: ["Fear"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Fear",
            dependencies: []),
        .testTarget(
            name: "FearTests",
            dependencies: ["Fear"]),
    ]
)
