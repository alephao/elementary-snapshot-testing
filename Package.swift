// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "elementary-snapshot-testing",
  platforms: [
    .macOS(.v14),
    .iOS(.v17),
    .tvOS(.v17),
    .watchOS(.v10),
  ],
  products: [
    .library(name: "ElementarySnapshotTesting", targets: ["ElementarySnapshotTesting"])
  ],
  dependencies: [
    .package(url: "https://github.com/sliemeobn/elementary.git", revision: "5994b0c"),
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.17.0"),
  ],
  targets: [
    .target(
      name: "ElementarySnapshotTesting",
      dependencies: [
        .product(name: "Elementary", package: "elementary"),
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
      ]
    ),
    .testTarget(
      name: "ElementarySnapshotTestingTests",
      dependencies: [
        "ElementarySnapshotTesting",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
        .product(name: "Elementary", package: "elementary"),
      ]
    ),
  ]
)
