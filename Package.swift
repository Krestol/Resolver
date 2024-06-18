// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resolver",
    products: [
        .library(
            name: "Resolver",
            targets: ["Resolver"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Krestol/Quick", from: "7.6.1"),
        .package(url: "https://github.com/Krestol/Nimble", from: "13.3.1"),
    ],
    targets: [
        .target(
            name: "Resolver"
        ),
        .testTarget(
            name: "ResolverTests",
            dependencies: ["Resolver", "Quick", "Nimble"]
        ),
    ]
)
