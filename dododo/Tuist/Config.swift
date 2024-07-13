//
//  Config.swift
//  Attendance_iOS_2024Manifests
//
//  Created by 서원지 on 6/7/24.
//

import Foundation
import ProjectDescription

let config = Config(
//    compatibleXcodeVersions: ["15.2"],
    swiftVersion: "5.10.0",
    plugins: [
        .local(path: .relativeToRoot("Plugins/ProjectTemplatePlugin")),
        .local(path: .relativeToRoot("Plugins/DependencyPackagePlugin")),
        .local(path: .relativeToRoot("Plugins/DependencyPlugin")),
    ],
    generationOptions: .options()
)
