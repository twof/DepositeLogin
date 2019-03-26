// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "DepositeLogin",
    products: [
        .library(name: "DepositeLogin", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.2.0"),
        .package(url: "https://github.com/vapor-community/vapor-ext.git", from: "0.3.3"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

