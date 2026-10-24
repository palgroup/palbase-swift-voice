// swift-tools-version:6.0
// Palbase's iOS voice SDK 0.7.1 — a chat's live voice over WebRTC, apart from palbase-swift: an app that talks to no
// voice resolves no WebRTC. Built from palbase-swift-src by scripts/xcframework.sh; do not edit here.
import PackageDescription

let package = Package(
    name: "PalbaseVoice",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "PalbaseVoice", targets: ["PalbaseVoice", "PalbaseVoiceLinks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/palgroup/palbase-swift", exact: "0.7.1"),
        .package(url: "https://github.com/livekit/webrtc-xcframework.git", exact: "144.7559.08"),
    ],
    targets: [
        .binaryTarget(name: "PalbaseVoice", url: "https://palgroup.github.io/palbase-swift-binaries/0.7.1/PalbaseVoice.xcframework.zip", checksum: "440a8cf98d7fc45211f9362d91a8f1bedadabfb3493c6269442625bec8647ae3"),
        .target(name: "PalbaseVoiceLinks", dependencies: [.product(name: "Palbase", package: "palbase-swift"), .product(name: "LiveKitWebRTC", package: "webrtc-xcframework")]),
    ]
)
