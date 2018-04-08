# Leaf Bootstrap Provider
[![Documentation](http://img.shields.io/badge/read_the-docs-92A8D1.svg)](https://docs.vapor.codes/2.0/vapor/provider) [![Swift 4](http://img.shields.io/badge/swift-4-brightgreen.svg)](https://swift.org)
Add Bootstrap components into your Vapor app.

## Package
This section outlines how to import the Leaf Bootstrap package with a Vapor project.

The easiest way to use Leaf Bootstrap with Vapor is to include the Leaf Bootstrap provider.

```swift
// swift-tools-version:4.0
import PackageDescription

let package = Package(
        dependencies: [
            .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.4.2")),
            .package(url: "https://github.com/EpicKris/vapor-leaf-bootstrap-provider.git", .upToNextMajor(from: "1.0.0"))
        ],
        targets: [
            .target(
                    dependencies: ["Vapor", "LeafBootstrapProvider"]
            )
        ]
)
```

The Leaf Bootstrap provider package adds Leaf Bootstrap to your project.

## provider
After you've added the Leaf Bootstrap Provider package to your project, setting the provider up in code is easy.

### Add to Droplet
First, register the `LeafBootstrapProvider.Provider` with your Droplet.

```swift
import Vapor
import LeafBootstrapProvider

let config = try Config()
try config.addProvider(LeafBootstrapProvider.Provider.self)
```

### Done
Next time you boot your application, your views will be rendered using Leaf Bootstrap.
