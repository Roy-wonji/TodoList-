//
//  Project.swift
//  Manifests
//
//  Created by 서원지 on 7/13/24.
//

import ProjectDescription
import DependencyPlugin
import ProjectTemplatePlugin
import DependencyPackagePlugin

let infoPlist: [String: Plist.Value] = InfoPlistValues.generateInfoPlist()

let project = Project.makeAppModule(
    name : Project.Environment.appName,
    bundleId: .mainBundleID(),
    product: .app,
    settings: .appMainSetting,
    scripts: [],
    dependencies: [
        .Shared(implements: .Shareds),
        .Presentation(implements: .Presentation)
        
    ],
    sources: ["Sources/**"],
    resources: ["Resources/**"],
    infoPlist: .extendingDefault(with: infoPlist)
)
