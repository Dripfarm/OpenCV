// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "LibOpenCV2",

    platforms: [
        .iOS(.v13),
        .visionOS(.v1),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "LibOpenCV2",
            targets: ["LibOpenCV2", "opencv2"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LibOpenCV2",
            dependencies: ["opencv2"]),
        .binaryTarget(
            name: "opencv2",
            url: "https://github.com/Dripfarm/OpenCV/releases/download/0.1.0/opencv2.xcframework.zip",
            checksum: "352d7f40fcdc0e6c63f5e66cc99c5780a265110d8cd9a018bc653b0df7f7e9bb"
        )
    ]
) 