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
        url: "https://github.com/realm/realm-swift/releases/download/v20.0.0/RealmSwift@16.1_beta.spm.zip",
        checksum: "18d24f979db99743010f8c774c6cefe996a075b334a4dbe1a930a6bc876b12aa"
      ),
      .target(name: "_RealmStub"),
    ]
)
