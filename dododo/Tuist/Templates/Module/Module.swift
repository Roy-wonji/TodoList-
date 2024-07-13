//
//  Module.swift
//  Manifests
//
//  Created by 서원지 on 10/31/23.
//

import ProjectDescription
import Foundation

let layer = Template.Attribute.required("layer")
let name = Template.Attribute.required("name")
let author: Template.Attribute = .required("author")
let currentDate: Template.Attribute = .optional("currentDate", default: defaultDate)
let year: Template.Attribute = .optional("year", default: defaultYear)

let template = Template(
    description: "A template for a new modules",
    attributes: [
//        path,
        layer,
        name,
        author,
        currentDate,
        year
    ],
    items: ModuleTemplate.allCases.map { $0.item }
    
)


enum ModuleTemplate: CaseIterable {
    case project
    case baseFile
    case testProject
    
    var item: Template.Item {
        switch self {
        case .project:
            return .file(path: .basePath + "/Project.swift", templatePath: "Project.stencil")
            
        case .baseFile:
            return .file(path: .basePath + "/Sources/Base.swift", templatePath: "base.stencil")
            
        case .testProject:
            return .file(path:  .testBasePath + "/Sources/Test.swift", templatePath: "test.stencil")
            
        }
    }
}


extension String {
    static var basePath: Self {
        return "Projects/\(layer)/\(name)"
    }
    static var testBasePath: Self {
        return "Projects/\(layer)/\(name)/\(name)Tests"
    }
}


var defaultDate: Template.Attribute.Value {
    let today = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    let formattedDate = formatter.string(from: today)
    return .string(formattedDate)
}

var defaultYear: Template.Attribute.Value {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy"
    return .string(dateFormatter.string(from: Date()))
}


