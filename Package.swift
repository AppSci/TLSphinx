// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TLSphinx",
    platforms: [.iOS(.v13), .macOS(.v10_11)],
    products: [
        .library(
            name: "TLSphinx",
            targets: ["TLSphinx"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TLSphinx",
            dependencies: [],
            resources: [.copy("Sphinx")],
            cSettings: [
                .headerSearchPath("Sphinx/include"),
                .headerSearchPath("Sphinx/lib")
            ]
        ),
    ]
)
