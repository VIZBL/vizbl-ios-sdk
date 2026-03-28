// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "VizblKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "VizblKit",
            type: .static,
            targets: [
                "VizblKit",
                "VizblKitResources"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "VizblKit",
            url: "https://github.com/VIZBL/vizbl-ios-sdk/releases/download/0.1.0/VizblKit.xcframework.zip",
            checksum: "a155bed795b09dd8ec118ec31e84e4a2c211152e475f296ef433eaf82e1b22fc"
        ),
        .target(
            name: "VizblKitResources",
            path: "Resources",
            resources: [
                .copy("Bundles")
            ]
        )
    ]
)
