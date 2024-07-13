//
//  DemoModule.swift
//  Templates
//
//  Created by 서원지 on 1/14/24.
//

import Foundation
import ProjectDescription


let demoModuleLayer = Template.Attribute.required("layer")
let demoModuleName = Template.Attribute.required("name")
let demoModuleAuthor: Template.Attribute = .required("author")
let demoModuleCurrentDate: Template.Attribute = .optional("currentDate", default: demoDefaultDate)
let demoModuleYear: Template.Attribute = .optional("year", default: demoDefaultYear)


let deomoModuletemplate = Template(
    description: "A template for a new modules",
    attributes: [
//        path,
        demoModuleLayer,
        demoModuleName,
        demoModuleAuthor,
        demoModuleCurrentDate,
        demoModuleYear
    ],
    items: DemoModuleTemplate.allCases.map { $0.item }

)



enum DemoModuleTemplate: CaseIterable {
    case appFile
    case project
    case baseFile
    case testProject
    case resources
    
    var item: Template.Item {
        switch self {
        case .appFile:
            return .file(path: .demoBasePath + "/Sources/Application/demoApplication.swift", templatePath: "demoApplication.stencil")
        case .project:
            return .file(path: .demoBasePath + "/Project.swift", templatePath: "Project.stencil")
        case .baseFile:
            return .file(path: .demoBasePath + "/Sources/Base.swift", templatePath: "base.stencil")
        case .testProject:
            return .file(path:  .demoTestBasePath + "/Sources/Test.swift", templatePath: "test.stencil")
        case .resources:
            return .directory(path: .demoBasePath + "Resources/Assets.xcassets" , sourcePath: "Assets.xcassets")
        }
    }
}

extension String {
    static var demoBasePath: Self {
        return "Projects/\(demoModuleLayer)/\(demoModuleName)"
    }
    
    static var demoTestBasePath: Self {
        return "Projects/\(demoModuleLayer)/\(demoModuleName)/\(demoModuleName)Tests"
    }
    
    static var assetBasePath: Self {
        return "Projects/\(demoModuleLayer)/\(demoModuleName)/"
    }
}


var demoDefaultDate: Template.Attribute.Value {
    let today = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    let formattedDate = formatter.string(from: today)
    return .string(formattedDate)
}

var demoDefaultYear: Template.Attribute.Value {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy"
    return .string(dateFormatter.string(from: Date()))
}
