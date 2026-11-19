# Vizbl iOS SDK

VizblKit is distributed as a binary Swift Package (`binaryTarget`) that contains a prebuilt `VizblKit.xcframework` for iOS 18+.

Vizbl iOS SDK allows you to embed a fully interactive AR experience into your iOS application and place Vizbl objects in the real world.

The SDK handles AR, placement, interaction, and UI automatically.

## Features

- real-time AR object placement
- floor, wall, ceiling, and carpet placement
- automatic placement guidance
- built-in interaction and controls
- material / variant selection UI

## Requirements

- iOS 18.0 or later
- Xcode 26.4 or later

> **Use 0.1.0 for now.** The 1.0.23 binary was built with a beta Xcode and does not link with release Xcode 26.x. A rebuilt 1.0.24 is coming; until then pin `0.1.0`.
- A physical device: AR does not run in the simulator
- Camera permission (`NSCameraUsageDescription`) in your app's Info.plist

No API key is needed in the app. Objects are referenced by their Object ID (UUID) or `tinuuid`, both shown in your Vizbl cabinet and returned by the Vizbl API.

## Installation

### Swift Package Manager

In Xcode:

1. Go to **File → Add Package Dependencies…**
2. Enter the package URL:

```text
https://github.com/VIZBL/vizbl-ios-sdk
```

3. Select a version rule: **Exact Version** `0.1.0` (tags have no `v` prefix)
4. Select the product `VizblKit`

Or in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/VIZBL/vizbl-ios-sdk.git", exact: "0.1.0")
]
```

Then import the SDK:

```swift
import VizblKit
```

## Usage

Minimal example: a button that opens the AR view with one object.

```swift
import SwiftUI
import VizblKit

struct ContentView: View {
    @StateObject private var controller = ARViewController(configuration: .default)
    private let object = ARObjectReference(.tinuuid("YOUR-TINUUID"), with: nil)

    var body: some View {
        Button("Open AR") { controller.isPresented = true }
            .fullScreenCover(isPresented: $controller.isPresented) {
                NavigationStack {
                    ARView(object: object, controller: controller)
                }
            }
    }
}
```

To add more objects while the view is open, call the controller from the main actor:

```swift
let instanceId = try await controller.add(tinuuid: "ANOTHER-TINUUID")
// or: try await controller.add(objectId: UUID(uuidString: "…")!)
```

`add` returns the instance ID of the placed object, which you can pass to `remove` or `replace`.

## Documentation

https://developer.vizbl.com/docs/ios

## Demo

https://github.com/VIZBL/vizbl-ios-demo

## Releases

This repository is updated on every release:

- `VizblKit.xcframework.zip` is uploaded to GitHub Releases
- `Package.swift` points to that zip URL and checksum

## Resources

Resource bundles are included in the `Resources/Bundles` directory and are automatically linked via the `VizblKitResources` target in `Package.swift`.
