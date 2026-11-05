// swift-tools-version:6.0
// Palbase's iOS voice SDK 0.17.0 — a chat's live voice over WebRTC, apart from palbase-swift: an app that talks to no
// voice resolves no WebRTC. Built from palbase-swift-src by scripts/xcframework.sh; do not edit here.
import PackageDescription

let package = Package(
    name: "PalbaseVoice",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "PalbaseVoice", targets: ["PalbaseVoice", "PalbaseVoiceLinks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/palgroup/palbase-swift", exact: "0.17.0"),
        .package(url: "https://github.com/livekit/webrtc-xcframework.git", exact: "150.7871.04"),
    ],
    targets: [
        .binaryTarget(name: "PalbaseVoice", url: "https://palgroup.github.io/palbase-swift-binaries/0.17.0/PalbaseVoice.xcframework.zip", checksum: "738d5d2345aa72c4700377e56ca79920a07f11ec6530bdf3603e6ccba55524b0"),
        .target(name: "PalbaseVoiceLinks", dependencies: [.product(name: "Palbase", package: "palbase-swift"), .product(name: "LiveKitWebRTC", package: "webrtc-xcframework")]),
    ]
)
