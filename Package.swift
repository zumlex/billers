//
//  Package.swift
//  Billers Integrated
//
//  Created by okan on 19.02.2024.
//  swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Billers",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "Billers",
            targets: ["Billers"]),
    ],
    dependencies: [
        // Add your specific dependencies here
        .package(url: "https://github.com/dependency1.git", from: "1.0.0"),
        .package(url: "https://github.com/dependency2.git", from: "2.0.0"),
        // Add more dependencies if needed
    ],
    targets: [
        .target(
            name: "Billers",
            dependencies: ["dependency1", "dependency2"]),
        .testTarget(
            name: "BillersTests",
            dependencies: ["Billers"]),
    ]
)
