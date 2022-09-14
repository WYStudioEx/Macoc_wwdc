// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ConfCore",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ConfCore",
            type: .dynamic,
            targets: ["ConfCore"])
    ],
    dependencies: [
        .package(name: "Siesta", url: "https://github.com/bustoutsolutions/siesta", from: "1.5.2"),
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "6.0.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxRealm", from: "5.0.1"),
        .package(url: "https://github.com/insidegui/CloudKitCodable", .branch("spm")),
        .package(path: "../Transcripts")
	],
    targets: [
        .target(
            name: "ConfCore",
            dependencies: [
				"CloudKitCodable",
				"Siesta",
				"RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
				"RxRealm",
                "Transcripts"
			],
			path: "ConfCore/")
    ]
)
