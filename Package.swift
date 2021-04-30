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
        ),
        .package(
            name: "TwilioVoice",
            url: "https://github.com/gersonnoboa/twilio-voice-ios.git",
            .upToNextMajor(from: "1.0.0")
        ),
        .package(
            name: "WebRTC",
            url: "https://github.com/gersonnoboa/spm-test.git",
            .upToNextMajor(from: "1.0.4")
        )
    ],
    targets: [
        .binaryTarget(
            name: "SalemoveSDK",
            url: "https://github.com/gersonnoboa/glia-core/releases/download/1.0.19/SalemoveSDK.xcframework.zip",
            checksum: "1810874b6c5ce56119fa1a2049a3b6d9f28913f81ce3273fdb2a6366495ed9a4"
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
