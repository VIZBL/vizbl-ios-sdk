# VizblKit

`VizblKit` is distributed as a **binary Swift Package** (`binaryTarget`) that contains a prebuilt `VizblKit.xcframework` for **iOS 18+**.

## Installation (Swift Package Manager)

In Xcode:
1. **File → Add Package Dependencies…**
2. Enter the package URL:
   ```
   https://github.com/VIZBL/vizbl-ios-sdk
   ```
3. Select version rule (e.g. **Up to Next Major**).
4. Select the product **VizblKit**.

Then:

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

## Releases

This repository is updated on every release:
- `VizblKit.xcframework.zip` is uploaded to [GitHub Releases](https://github.com/VIZBL/vizbl-ios-sdk/releases)
- `Package.swift` points to that zip URL and checksum

## Resources

Resource bundles are included in the `Resources/Bundles` directory and are automatically
linked via the `VizblKitResources` target in `Package.swift`.
