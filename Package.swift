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
        url: "https://github.com/realm/realm-swift/releases/download/v10.43.1/Realm.spm.zip",
        checksum: "b26c979ce122acaabb6a6eef9567de43344377afa825c597ae6e14caf508c225"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v10.43.1/RealmSwift@15.0.spm.zip",
        checksum: "c548dd125df800b5888129f93119360cd3bb3b74ebd740bc21a170f411debee1"
      ),
      .target(name: "_RealmStub"),
    ]
)
