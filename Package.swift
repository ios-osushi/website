// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IosOsushiWebsite",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "IosOsushiWebsite",
            targets: ["IosOsushiWebsite"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.9.0"),
    ],
    targets: [
        .executableTarget(
            name: "IosOsushiWebsite",
            dependencies: [
                .product(name: "Publish", package: "publish"),
            ]
        ),
    ]
)
