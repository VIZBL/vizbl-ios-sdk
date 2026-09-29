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
            url: "https://github.com/VIZBL/vizbl-ios-sdk/releases/download/1.0.23/VizblKit.xcframework.zip",
            checksum: "0b2064f2b78f77128b1a729438330c3271ef275741c6f871a010679182338825"
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
