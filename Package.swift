// swift-tools-version:6.0
// Palbase's voice SDK 0.22.0 — re-exports PalbaseVoice from palbase-swift (iOS and macOS). Built from
// palbase-swift-src by scripts/xcframework.sh; do not edit here.
import PackageDescription

let package = Package(
    name: "PalbaseVoice",
    platforms: [.iOS(.v18), .macOS(.v15)],
    products: [
        .library(name: "PalbaseVoice", targets: ["PalbaseVoiceLinks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/palgroup/palbase-swift", exact: "0.22.0"),
    ],
    targets: [
        .target(name: "PalbaseVoiceLinks", dependencies: [.product(name: "PalbaseVoice", package: "palbase-swift")]),
    ]
)
