// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCoreSymbolication",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "SwiftCoreSymbolication", targets: ["SwiftCoreSymbolication"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/CoreSymbolication", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "SwiftCoreSymbolication",
            dependencies: ["CoreSymbolication"]
        ),
        .testTarget(
            name: "SwiftCoreSymbolicationTests",
            dependencies: ["SwiftCoreSymbolication"],
            resources: [
                .copy("Resources"),
            ],
            linkerSettings: [
                .unsafeFlags([
                    "-Xlinker", "-F",
                    "-Xlinker", "/System/Library/PrivateFrameworks",
                    "-Xlinker", "-framework",
                    "-Xlinker", "CoreSymbolication",
                ]),
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
