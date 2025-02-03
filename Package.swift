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
            url: "https://github.com/rishh18/ApTestLib/releases/download/1.0.6/TestLibrary.xcframework.zip",
            checksum: "4ad09c457b74b48fd27c07bdb97e5f41928823f8e440aee22143477695fdfcc4"
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
