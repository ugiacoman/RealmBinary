// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v12)],
    products: [
      .library(
        name: "RealmSwift",
        targets: ["RealmSwift"]
      ),
    ],
    dependencies: [
    ],
    targets: [
      .binaryTarget(
        name: "RealmSwift",
        path: "./Sources/realm-monorepo.xcframework"
      ),
    ]
)
