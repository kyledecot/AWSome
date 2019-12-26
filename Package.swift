// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AWSome",
    platforms: [
         .macOS(.v10_13)
     ],
    dependencies: [
        .package(url: "https://github.com/swift-aws/aws-sdk-swift.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "AWSome",
            dependencies: []),
        .testTarget(
            name: "AWSomeTests",
            dependencies: ["AWSome"]),
    ]
)
