//
//  SettingDictionary.swift
//  ProjectTemplatePlugin
//
//  Created by 서원지 on 6/12/24.
//

import Foundation
import ProjectDescription

public extension SettingsDictionary {
    func setProductBundleIdentifier(_ value: String = "com.iOS$(BUNDLE_ID_SUFFIX)") -> SettingsDictionary {
        return self.merging(["PRODUCT_BUNDLE_IDENTIFIER": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setProductName(_ value: String) -> SettingsDictionary {
        return self.merging(["PRODUCT_NAME": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setCFBundleDisplayName(_ value: String) -> SettingsDictionary {
        return self.merging(["CFBundleDisplayName": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setMarketingVersion(_ value: String) -> SettingsDictionary {
        return self.merging(["MARKETING_VERSION": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setASAuthenticationServicesEnabled(_ value: String = "YES") -> SettingsDictionary {
        return self.merging(["AS_AUTHENTICATION_SERVICES_ENABLED": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setPushNotificationsEnabled(_ value: String = "YES") -> SettingsDictionary {
        return self.merging(["PUSH_NOTIFICATIONS_ENABLED": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setEnableBackgroundModes(_ value: String = "YES") -> SettingsDictionary {
        return self.merging(["UIBackgroundModes": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setArchs(_ value: String = "$(ARCHS_STANDARD)") -> SettingsDictionary {
        return self.merging(["ARCHS": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setOtherLdFlags(_ value: String = "$(inherited) -ObjC") -> SettingsDictionary {
        return self.merging(["OTHER_LDFLAGS": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setCurrentProjectVersion(_ value: String) -> SettingsDictionary {
        return self.merging(["CURRENT_PROJECT_VERSION": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setCodeSignIdentity(_ value: String = "iPhone Developer") -> SettingsDictionary {
        return self.merging(["CODE_SIGN_IDENTITY": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setCodeSignStyle(_ value: String = "Manual") -> SettingsDictionary {
        return self.merging(["CODE_SIGN_STYLE": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setVersioningSystem(_ value: String = "apple-generic") -> SettingsDictionary {
        return self.merging(["VERSIONING_SYSTEM": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setDebugInformationFormat(_ value: String = "DWARF with dSYM File") -> SettingsDictionary {
        return self.merging(["DEBUG_INFORMATION_FORMAT": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setStripStyle(_ value: String = "non-global") -> SettingsDictionary {
        return self.merging(["STRIP_STYLE": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setProvisioningProfileSpecifier(_ value: String) -> SettingsDictionary {
        return self.merging(["PROVISIONING_PROFILE_SPECIFIER": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setDevelopmentTeam(_ value: String) -> SettingsDictionary {
        return self.merging(["DEVELOPMENT_TEAM": SettingValue(stringLiteral: value)]) { (_, new) in new }
    }
    
    func setSkipInstall(_ value: Bool = false) -> SettingsDictionary {
        return self.merging(["SKIP_INSTALL": SettingValue(stringLiteral: value ? "YES" : "NO")])
    }
}



