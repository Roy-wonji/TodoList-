//
//  Extension+String.swift
//  MyPlugin
//
//  Created by 서원지 on 1/6/24.
//

import Foundation
import ProjectDescription

extension String {
    public static func appVersion(version: String = "1.0.8") -> String {
        return version
    }
    
    public static func mainBundleID() -> String {
        return Project.Environment.bundlePrefix
    }
    
    public static func appBuildVersion(buildVersion: String = "18") -> String {
        return buildVersion
    }
    
    public static func appBundleID(name: String) -> String {
        return Project.Environment.bundlePrefix+name
    }
    
}
