// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "NotificationBannerSwift",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "NotificationBannerSwift", targets: ["NotificationBannerSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.1"),
        .package(url: "https://github.com/cbpowell/MarqueeLabel", from: "4.0.1")
    ],
    targets: [
        .target(
            name: "NotificationBannerSwift",
            dependencies: [.byName(name: "MarqueeLabel"), .byName(name: "SnapKit")],
            path: "NotificationBanner/Classes"
        )
    ]
)
