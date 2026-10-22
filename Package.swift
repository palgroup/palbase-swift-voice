// swift-tools-version:6.0
// Palbase's iOS voice SDK 0.6.1 — a chat's live voice over WebRTC, apart from palbase-swift: an app that talks to no
// voice resolves no WebRTC. Built from palbase-swift-src by scripts/xcframework.sh; do not edit here.
import PackageDescription

let package = Package(
    name: "PalbaseVoice",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "PalbaseVoice", targets: ["PalbaseVoice", "PalbaseVoiceLinks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/palgroup/palbase-swift", exact: "0.6.1"),
        .package(url: "https://github.com/livekit/webrtc-xcframework.git", exact: "144.7559.08"),
    ],
    targets: [
        .binaryTarget(name: "PalbaseVoice", url: "https://palgroup.github.io/palbase-swift-binaries/0.6.1/PalbaseVoice.xcframework.zip", checksum: "88ee6c20afab912289e7d1b8ea38353908d73e8bc173b9659482251ef283f98e"),
        .target(name: "PalbaseVoiceLinks", dependencies: [.product(name: "Palbase", package: "palbase-swift"), .product(name: "LiveKitWebRTC", package: "webrtc-xcframework")]),
    ]
)
