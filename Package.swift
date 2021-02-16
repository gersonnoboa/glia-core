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
            checksum: "79bfbb213f9677e5d8014ab7b194855e53f2ce5c3d1f971aa11743f98468c310"
        )
    ]
)