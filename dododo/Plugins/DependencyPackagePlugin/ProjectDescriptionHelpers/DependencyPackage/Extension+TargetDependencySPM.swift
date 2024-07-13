//
//  Extension+TargetDependencySPM.swift
//  DependencyPackagePlugin
//
//  Created by 서원지 on 4/19/24.
//

import ProjectDescription

public extension TargetDependency.SPM {
    static let moya = TargetDependency.external(name: "Moya", condition: .none)
    static let combineMoya = TargetDependency.external(name: "CombineMoya", condition: .none)
    static let composableArchitecture = TargetDependency.external(name: "ComposableArchitecture", condition: .none)
    static let keychainAccess = TargetDependency.external(name: "KeychainAccess", condition: .none)
    static let concurrencyExtras = TargetDependency.external(name: "ConcurrencyExtras", condition: .none)
    static let sdwebImage = TargetDependency.external(name: "SDWebImageSwiftUI", condition: .none)
}
  

