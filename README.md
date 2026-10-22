# Palbase Voice for iOS

A chat's live voice in an app built on [Palbase](https://palbase.studio): the microphone to the voice and its voice
back, over WebRTC — apart from [palbase-swift](https://github.com/palgroup/palbase-swift), so an app that talks to no
voice resolves no WebRTC. Distributed as a binary XCFramework.

## Install

Swift Package Manager — in Xcode, *File → Add Package Dependencies…* with `https://github.com/palgroup/palbase-swift-voice`,
or in a `Package.swift`, at the same version as `palbase-swift`:

```swift
.package(url: "https://github.com/palgroup/palbase-swift-voice", exact: "0.6.1")
```

Link `PalbaseVoice`. It brings Palbase's core of the same version and LiveKit's WebRTC
([livekit/webrtc-xcframework](https://github.com/livekit/webrtc-xcframework), BSD-3-Clause; an app that also takes
LiveKit's SDK resolves the one package). The app's Info.plist says why it asks for the microphone
(`NSMicrophoneUsageDescription`).

```swift
import PalbaseVoice

let voice = try await PBVoice.connect { sdp in
    // The app's own backend starts the voice with the offer — Palbase.ai.chats.voice.start(chatId, { sdp, as }) —
    // and answers with the voice it started and the provider's answer.
    try await startVoice(sdp)   // → PBStartedVoice(id:sdp:)
}
voice.mute(true)
voice.close()
```

What is said reaches the chat's members as its state (`PBChat.State.voice`, messages of kind voice), from the gateway's
channel.

Requires iOS 18 and Xcode 16 or newer.

## Licence

The Palbase SDK License — see `LICENSE`: free to use in your apps; the SDK is distributed compiled, and its source is
not part of it. WebRTC is LiveKit's build, under its own licence.
