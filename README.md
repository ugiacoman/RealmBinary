# RealmBinary

This module vends the Realm binary for use in other modules. To re-generate the binary

1. Download the latest version of the Realm binary from the [Realm website](https://realm.io/docs/get-started/installation/mac/). You are looking for Realm.spm.zip and RealmSwift@x.x.x.spm zip.
2. Open up Package.swift and update links.
3. Get the checksum of the new binaries: `swift package compute-checksum RealmSwift@x.x.spm.zip`
4. Check Realm and RealmSwift header files and modulemaps to see if there are changes. If there are, just replace with the latest files.
