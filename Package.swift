// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NuggetExternalDependency",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "NuggetExternalDependency",
            targets: ["NuggetExternalDependency"]),
    ],
    dependencies: [
        .package(url: "https://github.com/patchthecode/JTAppleCalendar", .exact("8.0.5")),
        .package(url: "https://github.com/kean/Nuke.git", .exact("12.8.0")),
        .package(url: "https://github.com/BudhirajaRajesh/ZMarkupParser.git", .exact("2.0.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.2")),
    ],
    targets: [
        .target(
            name: "NuggetExternalDependency",
            dependencies: [
                .product(name: "JTAppleCalendar", package: "JTAppleCalendar"),
                .product(name: "Nuke", package: "Nuke"),
                .product(name: "NukeExtensions", package: "Nuke"),
                .product(name: "ZMarkupParser", package: "ZMarkupParser"),
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "NuggetExternalDependencyTests",
            dependencies: ["NuggetExternalDependency"]),
    ]
)
