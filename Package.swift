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
        url: "https://github.com/realm/realm-swift/releases/download/v10.45.2/Realm.spm.zip",
        checksum: "2d7cdd5bb09375e1acd0b9e332f28515667aaa7b78f1b70c945a296f2c10cb5f"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v10.45.2/RealmSwift@15.1.spm.zip",
        checksum: "633e386a2987d8f5a25543c8bfc3067ab5f63a373914fe336f74d71e97f09ad9"
      ),
      .target(name: "_RealmStub"),
    ]
)
