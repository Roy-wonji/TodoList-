//
//  Path+Modules.swift
//  Plugins
//
//  Created by 서원지 on 2/21/24.
//

import Foundation
import ProjectDescription

// MARK: ProjectDescription.Path + App
public extension ProjectDescription.Path {
    static var app: Self {
        return .relativeToRoot("Projects/\(ModulePath.App.name)")
    }
}


// MARK: ProjectDescription.Path + Feature
public extension ProjectDescription.Path {
    static var Presentation: Self {
        return .relativeToRoot("Projects/\(ModulePath.Presentations.name)")
    }
    
    static func Presentation(implementation module: ModulePath.Presentations) -> Self {
        return .relativeToRoot("Projects/\(ModulePath.Presentations.name)/\(module.rawValue)")
    }
}

// MARK: ProjectDescription.Path + Core
public extension ProjectDescription.Path {
    static var Core: Self {
        return .relativeToRoot("Projects/\(ModulePath.Cores.name)")
    }
    
    static func Core(implementation module: ModulePath.Cores) -> Self {
        return .relativeToRoot("Projects/\(ModulePath.Cores.name)/\(module.rawValue)")
    }
}


// MARK: ProjectDescription.Path + DesignSystem

public extension ProjectDescription.Path {
    static var Shared: Self {
        return .relativeToRoot("Projects/\(ModulePath.Shareds.name)")
    }
    
    static func Shared(implementation module: ModulePath.Shareds) -> Self {
        return .relativeToRoot("Projects/\(ModulePath.Shareds .name)/\(module.rawValue)")
    }
}

// MARK: ProjectDescription.Path + Domain

public extension ProjectDescription.Path {
    static var Networking: Self {
        return .relativeToRoot("Projects/\(ModulePath.Networkings.name)")
    }
    
    static func Networking(implementation module: ModulePath.Networkings) -> Self {
        return .relativeToRoot("Projects/\(ModulePath.Networkings.name)/\(module.rawValue)")
    }
}




