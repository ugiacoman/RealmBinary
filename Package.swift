// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v12)],
    products: [
      .library(
        name: "Realm",
        targets: ["Realm", "_RealmStub"]
      ),
      .library(
        name: "RealmSwift",
        targets: ["RealmSwift", "Realm", "_RealmStub"]
      )
    ],
    dependencies: [
    ],
    targets: [
      .binaryTarget(
        name: "Realm",
        url: "https://github.com/realm/realm-swift/releases/download/v20.0.0/Realm.spm.zip",
        checksum: "11428c01a60a81fb6a314d562de86cf724cd114330c36bcb4415ed276332f176"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v20.0.0/RealmSwift@16_beta_6.spm.zip",
        checksum: "a6e83219ddefd9731aaf39c6a59589cfa998665abdd241398c59c7ae83332253"
      ),
      .target(name: "_RealmStub"),
    ]
)
