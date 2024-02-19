// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "integrated-billers",
    products: [
        .library(name: "integrated-billers", targets: ["/"]),
    ],
    targets: [
        .target(name: "/"),
    ]

)