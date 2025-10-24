// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterUnrealCPP",
    products: [
        .library(name: "TreeSitterCPP", targets: ["TreeSitterCPP"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterCPP",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterUnrealCPPTests",
            dependencies: [
                .product(name: "SwiftTreeSitter", package: "swift-tree-sitter"),
                "TreeSitterCPP",
            ],
            path: "bindings/swift/TreeSitterCPPTests"
        )
    ],
    cLanguageStandard: .c11
)
