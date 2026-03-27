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

## Installation

### Swift Package Manager

In Xcode:

1. Go to **File → Add Package Dependencies…**
2. Enter the package URL:

```text
https://github.com/VIZBL/vizbl-ios-sdk
```

3. Select a version rule, for example **Up to Next Major**
4. Select the product `VizblKit`

Then import the SDK:

```swift
import VizblKit
```

## Usage

Minimal example:

```swift
import SwiftUI
import VizblKit

struct ContentView: View {
    @StateObject private var controller = ARViewController(configuration: .default)

    var body: some View {
        ARView(controller: controller)
            .onAppear {
                Task {
                    try? await controller.add(
                        objectId: UUID(uuidString: "YOUR-OBJECT-UUID")!,
                        materialId: nil
                    )
                }
            }
    }
}
```

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
