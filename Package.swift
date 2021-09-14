// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "TableViewContent",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "TableViewContent", targets: ["TableViewContent"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Juanpe/SkeletonView", from: "1.23.0")
    ],
    targets: [
        .target(name: "TableViewContent", dependencies: ["SkeletonView"], path: "TableViewContent/Classes"),
        .testTarget(name: "TableViewContentTest", dependencies: ["TableViewContent"])
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
