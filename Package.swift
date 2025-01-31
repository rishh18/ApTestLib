// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ApTestLibrary",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ApTestLib",
            targets: ["ApTestLib"]
        ),
    ],
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0")],
    targets: [
        .binaryTarget(
            name: "TestLibrary",
            url: "https://github.com/rishh18/ApTestLib/releases/download/1.0.4/TestLibrary.xcframework.zip",
            checksum: "c85cc6df41ac84bd349d1ac19c150588a0dfb13fb438d59e748a16c20bcf0096"
        ),
        .target(
          name: "ApTestLib",
          dependencies: [.target(name: "TestLibrary"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
          ],
          path: "Sources/ApTestLib"
        )
    ]
)
