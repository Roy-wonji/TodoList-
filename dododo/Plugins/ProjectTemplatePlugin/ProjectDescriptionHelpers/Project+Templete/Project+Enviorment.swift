//
//  Project+Enviorment.swift
//  MyPlugin
//
//  Created by 서원지 on 1/6/24.
//

import Foundation
import ProjectDescription

public extension Project {
    enum Environment {
        public static let appName = "DoDoDo"
        public static let appDemoName = "DoDoDo-Demo"
        public static let appDevName = "DoDoDo-Dev"
        public static let deploymentTarget : ProjectDescription.DeploymentTargets = .iOS("17.0")
        public static let deploymentDestination: ProjectDescription.Destinations = [.iPhone]
        public static let organizationTeamId = "N94CS4N6VR"
        public static let bundlePrefix = "Roy.com.Handa"
        public static let appVersion = "1.0.8"
        public static let mainBundleId = "Roy.com.Handa"
    }
}
