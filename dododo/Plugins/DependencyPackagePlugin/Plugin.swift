//
//  Plugin.swift
//  Plugins
//
//  Created by 서원지 on 2/21/24.
//

#if swift(>=6.0)
@preconcurrency import ProjectDescription
#else
import ProjectDescription
#endif

let plugin = Plugin(name: "DependencyPackagePlugin")
