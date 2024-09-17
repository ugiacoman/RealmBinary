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
        url: "https://github.com/realm/realm-swift/releases/download/v10.53.0/Realm.spm.zip",
        checksum: "632a17f1ca302b777572a20c158f3c52ad76e343cd228887ec7a6a6fba18e9cc"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v10.53.0/RealmSwift@15.4.spm.zip",
        checksum: "0897ce8ceb4f983d6d07ab9b00eb59ab2bc855e2d54018c919d1e92db304f3f1"
      ),
      .target(name: "_RealmStub"),
    ]
)
