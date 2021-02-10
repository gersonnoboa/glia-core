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
            url: "https://github.com/gersonnoboa/glia-core/releases/download/1.0.0/SalemoveSDK.xcframework.zip",
            checksum: "da9594c6b50119663f4f7ea1b956e059df1e4dc9552e121ee21be2e2587b0e2d"
        )
    ]
)