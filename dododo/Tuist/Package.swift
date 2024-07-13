// swift-tools-version: 5.9
#if swift(>=6.0)
@preconcurrency import PackageDescription
#else
import PackageDescription
#endif

#if TUIST

#if swift(>=6.0)
@preconcurrency import ProjectDescription
#else
import ProjectDescription
#endif

let packageSettings = PackageSettings(
    productTypes: [
        "SDWebImageSwiftUI": .staticLibrary,
        "PopupView": .staticLibrary,
        "KeychainAccess": .staticLibrary
    ]
)
#endif

let package = Package(
    name: "DoDoDo",
    dependencies: [
        .package(url: "http://github.com/pointfreeco/swift-composable-architecture", from: "1.11.2"),
        .package(url: "https://github.com/SDWebImage/SDWebImageSwiftUI.git", from: "2.0.0"),
        .package(url: "https://github.com/exyte/PopupView.git", from: "2.10.4"),
        .package(url: "https://github.com/pointfreeco/swift-concurrency-extras.git", from: "1.1.0"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess", from: "4.2.2"),
        
        
    ]
)
