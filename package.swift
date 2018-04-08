// swift-tools-version:4.0
import PackageDescription

let package = Package(
        name: "LeafBootstrapProvider",
        dependencies: [
            .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.4.2")),
            .package(url: "https://github.com/vapor/leaf-provider.git", .upToNextMajor(from: "1.1.0"))
        ],
        targets: [
            .target(
                    name: "LeafBootstrapProvider",
                    dependencies: ["Vapor", "LeafProvider"]
            )
        ]
)
