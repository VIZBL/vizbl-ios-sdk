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
            checksum: "0821655760d94f00a88f9e046e38e1895d337f246f5b4616a7212783f99374c8"
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
