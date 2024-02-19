//  swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Billers",
    products: [
        .library(
            name: "Billers",
            targets: ["Billers"]),
    ],
    targets: [
        .target(
            name: "Billers"),
        .testTarget(
            name: "BillersTests",
            dependencies: ["Billers"]),
    ]
)
