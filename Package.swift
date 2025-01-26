// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "ApTestLibrary",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ApTestLibrary",
            targets: ["ApTestLibrary"]
        ),
    ],
    dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0")],
    targets: [
        .binaryTarget(
            name: "ApTestLibrary",
            url: "https://github.com/rishh18/ApTestLib/releases/download/1.0.0/TestLibrary.xcframework.zip",
            checksum: "a8168b57232978ba2ecb9da13eb472f50f5e18466db372fc561fc388b3704ac5"
        ),
        .target(
          name: "Sources/ApTestLib",
          dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
          ],
          path: "Sources/ApTestLib"
        )
    ]
)
