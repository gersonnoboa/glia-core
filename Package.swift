// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SalemoveSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SalemoveSDK",
            targets: ["SalemoveSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "SalemoveSDK",
            url: "https://github.com/gersonnoboa/glia-core/releases/download/1.0.2/SalemoveSDK.xcframework.zip",
            checksum: "a6fb1196b66fdc950ebb0f5fda072a7856f82c434e13cc51f17f5cb872c7ff94"
        )
    ]
)