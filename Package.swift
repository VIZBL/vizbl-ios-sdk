// swift-tools-version: 6.0
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
            url: "https://github.com/VIZBL/vizbl-ios-sdk/releases/download/1.0.27/VizblKit.xcframework.zip",
            checksum: "3b54c27c77d068da261f32d950044c5146a5fa235b692c75a8143e5be422220b"
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
