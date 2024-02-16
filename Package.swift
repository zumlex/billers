// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Billers",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "Billers", targets: ["Billers"]),
    ],
    targets: [
        .target(name: "Billers"),
        .testTarget(name: "BillersTests", dependencies: ["Billers"]),
    ]
)