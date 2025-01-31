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
            url: "https://github.com/rishh18/ApTestLib/releases/download/1.0.2/TestLibrary.xcframework.zip",
            checksum: "7f84f85253e455768c47249deee6b7b825fc7d58b1a2b53fa583d7a134b8f4da"
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
