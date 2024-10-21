// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "mixpanelKlib",
    products: [
        .library(
            name: "mixpanelKlib",
            targets: ["mixpanelKlib", "mixpanelKlibTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mixpanel/mixpanel-iphone", exact: "5.0.7"),
    ],
    targets: [
        .binaryTarget(name: "mixpanelKlib", path: "mixpanelKlib.xcframework"),
        .target(
            name: "mixpanelKlibTarget",
            dependencies: [
                .target(name: "mixpanelKlib"),
                .product(name: "Mixpanel", package: "mixpanel-iphone"),
            ],
            path: "Sources/mixpanelKlib"
        )
    ]
)