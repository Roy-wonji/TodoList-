//
//  TargetDependency+Modules.swift
//  Plugins
//
//  Created by 서원지 on 2/21/24.
//

import Foundation
import ProjectDescription

// MARK: TargetDependency + App

public extension TargetDependency {
    static var app: Self {
        return .project(target: ModulePath.App.name, path: .app)
    }
    
    static func app(implements module: ModulePath.App) -> Self {
        return .target(name: ModulePath.App.name + module.rawValue)
    }
}

// MARK: TargetDependency + Feature
public extension TargetDependency {
    static func Presentation(implements module: ModulePath.Presentations) -> Self {
        return .project(target: module.rawValue, path: .Presentation(implementation: module))
    }
}

// MARK: TargetDependency + Design
public extension TargetDependency {
    static func Shared(implements module: ModulePath.Shareds) -> Self {
        return .project(target: module.rawValue, path: .Shared(implementation: module))
    }
}

// MARK: TargetDependency + Core
public extension TargetDependency {
    static func Core(implements module: ModulePath.Cores) -> Self {
        return .project(target: module.rawValue, path: .Core(implementation: module))
    }
}


// MARK: TargetDependency + Domain

public extension TargetDependency {
    static func Networking(implements module: ModulePath.Networkings) -> Self {
        return .project(target: module.rawValue, path: .Networking(implementation: module))
    }
}



