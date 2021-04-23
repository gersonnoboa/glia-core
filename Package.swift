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
    dependencies: [
        .package(
            name: "Macaw",
            url: "https://github.com/exyte/Macaw.git",
            .upToNextMajor(from: "0.9.7")
        ),
        .package(
            name: "Moya",
            url: "https://github.com/Moya/Moya.git",
            .upToNextMajor(from: "14.0.1")
        ),
        .package(
            name: "ReactiveSwift",
            url: "https://github.com/ReactiveCocoa/ReactiveSwift.git",
            .upToNextMajor(from: "6.6.0")
        ),
        .package(
            name: "SocketIO",
            url: "https://github.com/socketio/socket.io-client-swift.git",
            .upToNextMajor(from: "15.2.0")
        ),
        .package(
            name: "SwiftPhoenixClient",
            url: "https://github.com/davidstump/SwiftPhoenixClient.git",
            .upToNextMajor(from: "1.2.0")
        ),
        .package(
            name: "SWXMLHash",
            url: "https://github.com/drmohundro/SWXMLHash.git",
            .upToNextMajor(from: "5.0.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "SalemoveSDK",
            path: "SalemoveSDK.xcframework"
        ),
        .target(
            name: "SalemoveSDKTarget",
            dependencies: [
                "SalemoveSDK",
                "Moya",
                "Macaw",
                "ReactiveSwift",
                "SocketIO",
                "SwiftPhoenixClient",
                "SWXMLHash",
                "TwilioVoice",
                "WebRTC"
            ]
        )
    ]
)
