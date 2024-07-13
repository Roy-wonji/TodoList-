import Foundation
import ProjectDescription
import DependencyPlugin
import ProjectTemplatePlugin

let project = Project.makeAppModule(
name: "Utill",
bundleId: .appBundleID(name: ".Utill"),
product: .staticFramework,
settings:  .settings(),
dependencies: [

],
sources: ["Sources/**"]
)
