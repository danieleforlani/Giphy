// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebP",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WebP",
            targets: ["WebP"]),
        .library(
            name: "WebPMux",
            targets: ["WebPMux"]),
        .library(
            name: "WebPDemux",
            targets: ["WebPDemux"]),
        .library(
            name: "WebPDecoder",
            targets: ["WebPDecoder"])
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "WebP",
            path: "Frameworks/WebP.xcframework"
        ),
        .binaryTarget(
            name: "WebPMux",
            path: "Frameworks/WebPMux.xcframework"
        ),
        .binaryTarget(
            name: "WebPDemux",
            path: "Frameworks/WebPDemux.xcframework"
        ),
        .binaryTarget(
            name: "WebPDecoder",
            path: "Frameworks/WebPDecoder.xcframework"
        ),
    ]
)
