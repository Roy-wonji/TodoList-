//
//  Extension+Script.swift
//  MyPlugin
//
//  Created by 서원지 on 1/6/24.
//

import Foundation
import ProjectDescription

public extension TargetScript {
    static let SwiftLintString = TargetScript.pre(
        script: Scripts.swiftLintScript,
        name: "SwiftLintString",
        basedOnDependencyAnalysis: false
    )
    
    static let FirebaseCrashlyticsString = TargetScript.post(
        script: Scripts.FirebaseCrashlytics,
        name: "FirebaseCrashlytics",
        inputPaths: [
            "${DWARF_DSYM_FOLDER_PATH}/${DWARF_DSYM_FILE_NAME}/Contents/Resources/DWARF/${TARGET_NAME}",
            "$(SRCROOT)/$(BUILT_PRODUCTS_DIR)/$(INFOPLIST_PATH)",
            "${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/Resources/Firebase/GoogleService-Info.plist -p ios ${DWARF_DSYM_FOLDER_PATH}/${DWARF_DSYM_FILE_NAME}"
            
        ],
        basedOnDependencyAnalysis: true, // 또는 true, 필요에 따라 변경
        runForInstallBuildsOnly: true    // 또는 true, 필요에 따라 변경
    )
}
