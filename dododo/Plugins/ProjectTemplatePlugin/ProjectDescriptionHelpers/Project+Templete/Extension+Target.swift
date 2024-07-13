//
//  Extension+Target.swift
//  ProjectTemplatePlugin
//
//  Created by 서원지 on 6/14/24.
//

import Foundation
import ProjectDescription

public extension Target {
    private static func make(factory: TargetFactory) -> Self {
        return .target(
            name: factory.name,
            destinations: factory.destinations ?? .iOS,
            product: factory.product ?? .app,
            bundleId: factory.bundleId ?? Project.Environment.bundlePrefix + ".\(factory.name)",
            deploymentTargets: factory.deploymentTarget,
            infoPlist: factory.infoPlist,
            sources: factory.sources,
            resources: factory.resources,
            copyFiles: factory.copyFiles,
            headers: factory.headers,
            entitlements: factory.entitlements,
            scripts: factory.scripts,
            dependencies: factory.dependencies,
            settings: factory.settings,
            coreDataModels: factory.coreDataModels,
            environmentVariables: factory.environment,
            launchArguments: factory.launchArguments,
            additionalFiles: factory.additionalFiles
            
        )
    }
}


// MARK: Target + App

public extension Target {
    static func appTarget(factory: TargetFactory) -> Self {
        var newFactory = factory
        newFactory.name = factory.name
        newFactory.platform = factory.platform
        newFactory.product = factory.product
        newFactory.name = factory.name
        newFactory.bundleId = factory.bundleId
        newFactory.resources = factory.resources
        newFactory.productName = factory.productName
        return make(factory: newFactory)
    }
}
