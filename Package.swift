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
            checksum: "3cc6fe359721b6d8215afbd54f26e1505341910a489c656b86fc1745bebb758e"
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
