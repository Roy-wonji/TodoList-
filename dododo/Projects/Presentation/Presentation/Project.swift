import Foundation
import ProjectDescription
import DependencyPlugin
import ProjectTemplatePlugin


let project = Project.makeAppModule(
    name: "Presentation",
    bundleId: .appBundleID(name: ".Presentation"),
    product: .staticFramework,
    settings:  .settings(),
    dependencies: [
        .Shared(implements: .Shareds)
    ],
    sources: ["Sources/**"]
)
