// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "NuggetExternalDependency",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NuggetExternalDependency",
            targets: ["NuggetExternalDependency"]),
    ],
    dependencies: [
        .package(url: "https://github.com/patchthecode/JTAppleCalendar", .exact("8.0.5")),
        .package(url: "https://github.com/airbnb/lottie-spm.git", .exact("4.5.1")),
        .package(url: "https://github.com/kean/Nuke.git", .exact("12.8.0")),
        .package(url: "https://github.com/ZhgChgLi/ZMarkupParser.git", .exact("1.10.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.4.4")),
    ],
    targets: [
        .target(
            name: "NuggetExternalDependency",
            dependencies: [
                .product(name: "JTAppleCalendar", package: "JTAppleCalendar"),
                .product(name: "Lottie", package: "lottie-spm"),
                .product(name: "Nuke", package: "Nuke"),
                .product(name: "ZMarkupParser", package: "ZMarkupParser"),
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "NuggetExternalDependencyTests",
            dependencies: ["NuggetExternalDependency"]),
    ]
) 
