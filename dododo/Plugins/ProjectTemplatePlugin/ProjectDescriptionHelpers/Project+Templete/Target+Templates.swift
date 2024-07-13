//
//  Target+Templates.swift
//  ProjectTemplatePlugin
//
//  Created by 서원지 on 6/14/24.
//

import ProjectDescription

public struct TargetFactory {
    var name: String
    var platform: Platform
    var product: Product?
    var productName: String?
    var bundleId: String?
    var deploymentTarget: ProjectDescription.DeploymentTargets?
    var destinations: ProjectDescription.Destinations?
    var infoPlist: InfoPlist?
    var sources: SourceFilesList?
    var resources: ResourceFileElements?
    var copyFiles: [CopyFilesAction]?
    var headers: Headers?
    var entitlements: ProjectDescription.Entitlements?
    var scripts: [TargetScript]
    var dependencies: [TargetDependency]
    var settings: Settings?
    var coreDataModels: [CoreDataModel]
    var environment: [String : ProjectDescription.EnvironmentVariable]
    var launchArguments: [LaunchArgument]
    var additionalFiles: [FileElement]
    
    public init(
        name: String = "",
        platform: Platform = .iOS,
        product: Product? = nil,
        productName: String? = nil,
        bundleId: String? = nil,
        deploymentTarget: ProjectDescription.DeploymentTargets? = nil,
        destinations: ProjectDescription.Destinations? = nil,
        infoPlist: InfoPlist? = .default,
        sources: SourceFilesList? = .sources,
        resources: ResourceFileElements? = nil,
        copyFiles: [CopyFilesAction]? = nil,
        headers: Headers? = nil,
        entitlements: ProjectDescription.Entitlements? = nil,
        scripts: [TargetScript] = [],
        dependencies: [TargetDependency] = [],
        settings: Settings? = nil,
        coreDataModels: [CoreDataModel] = [],
        environment: [String : ProjectDescription.EnvironmentVariable] = [:],
        launchArguments: [LaunchArgument] = [],
        additionalFiles: [FileElement] = []
    ) {
        self.name = name
        self.platform = platform
        self.product = product
        self.productName = productName
        self.deploymentTarget = Project.Environment.deploymentTarget
        self.bundleId = bundleId
        self.infoPlist = infoPlist
        self.sources = sources
        self.resources = resources
        self.copyFiles = copyFiles
        self.headers = headers
        self.entitlements = entitlements
        self.scripts = scripts
        self.dependencies = dependencies
        self.settings = settings
        self.coreDataModels = coreDataModels
        self.environment = environment
        self.launchArguments = launchArguments
        self.additionalFiles = additionalFiles
    }
}
