// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SalemoveSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SalemoveSDK",
            targets: ["SalemoveSDKTarget"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SalemoveSDK",
            url: "https://github.com/gersonnoboa/glia-core/releases/download/1.0.18/SalemoveSDK.xcframework.zip",
            checksum: "bbb44b623b3b4c022699a7661f659fdca128ad8aa1dcccca12a6b061324f7d05"
        ),
        .target(
            name: "SalemoveSDKTarget",
            dependencies: [
                "SalemoveSDK"
            ]
        )
    ]
)
