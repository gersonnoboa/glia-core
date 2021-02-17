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
            checksum: "10ce347b2c3e127cd78d3da68cf879ce075a16c9c1c14d404392decbcee80b58"
        )
    ]
)