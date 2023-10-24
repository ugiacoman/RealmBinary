// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"]),
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift", "Realm"])
    ],
    dependencies: [
    ],
    targets: [
            .binaryTarget(
      name: "Realm",
      url: "https://github.com/realm/realm-swift/releases/download/v10.43.1/Realm.spm.zip",
      checksum: "8a4c2afd6ece39d088beaf5dead041c91e1d0778e89a330279625a281412ef7d"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/realm/realm-swift/releases/download/v10.43.1/RealmSwift@15.0.spm.zip",
      checksum: "3bfeb55fa6603e4ff6bddc764e32abf6bcf87a885abc1ef44785a4f45fbddc22"
    )
    ]
)
