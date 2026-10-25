// swift-tools-version:6.0
// Palbase's iOS voice SDK 0.7.4 — a chat's live voice over WebRTC, apart from palbase-swift: an app that talks to no
// voice resolves no WebRTC. Built from palbase-swift-src by scripts/xcframework.sh; do not edit here.
import PackageDescription

let package = Package(
    name: "PalbaseVoice",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "PalbaseVoice", targets: ["PalbaseVoice", "PalbaseVoiceLinks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/palgroup/palbase-swift", exact: "0.7.4"),
        .package(url: "https://github.com/livekit/webrtc-xcframework.git", exact: "144.7559.08"),
    ],
    targets: [
        .binaryTarget(name: "PalbaseVoice", url: "https://palgroup.github.io/palbase-swift-binaries/0.7.4/PalbaseVoice.xcframework.zip", checksum: "62902b08aefe47c2a5ed6ed0c7271a9df5cfd27c8b6f294e842c32e0ccf0d01d"),
        .target(name: "PalbaseVoiceLinks", dependencies: [.product(name: "Palbase", package: "palbase-swift"), .product(name: "LiveKitWebRTC", package: "webrtc-xcframework")]),
    ]
)
