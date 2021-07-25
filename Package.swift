// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExpandableTextTabBar",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ExpandableTextTabBar",
            targets: ["ExpandableTextTabBar"])
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ExpandableTextTabBar",
            dependencies: []),
    ]
)
