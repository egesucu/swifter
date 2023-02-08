// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "Swifter",
  platforms: [
    .iOS(.v13),
    .macOS(.v11),
    .tvOS(.v11)
  ],
  products: [
    .library(name: "Swifter", targets: ["Swifter"]),
    .executable(name: "SwifterExample", targets: ["SwifterExample"])
  ],
  targets: [
    .target(
      name: "Swifter", 
      dependencies: [], 
      path: "Xcode/Sources"
      ),

    .executableTarget(
      name: "SwifterExample",
      dependencies: [
        "Swifter"
      ], 
      path: "SwifterExample"
    ),

    .testTarget(
      name: "SwifterTests", 
      dependencies: [
        "Swifter"
      ], 
      path: "Xcode/Tests"
    )
  ]
)
