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
            url: "https://github.com/twilio/twilio-voice-ios.git",
            .upToNextMajor(from: "5.5.2")
        )
    ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/salemove/ios-bundle/releases/download/0.27.0/WebRTC.xcframework.zip",
            checksum: "996f02aff0f0ade1a16f0d8798150e58a126934ebdfd20610421931bfa459859"
        ),
        .binaryTarget(
            name: "SalemoveSDK",
            url: "https://github.com/gersonnoboa/glia-core/releases/download/1.0.11/SalemoveSDK.xcframework.zip",
            checksum: "4e67c642bf8b21d3de8d8120b4fc4dad412c440d9a29f05243ab089abc814a96"
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
