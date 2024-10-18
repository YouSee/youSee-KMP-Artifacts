// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "networkKlib",
    products: [
        .library(
            name: "networkKlib",
            targets: ["networkKlib", "networkKlibTarget"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(name: "networkKlib", path: "networkKlib.xcframework"),
        .target(
            name: "networkKlibTarget",
            dependencies: [
                .target(name: "networkKlib"),
                
            ],
            path: "Sources/networkKlib"
        )
    ]
)