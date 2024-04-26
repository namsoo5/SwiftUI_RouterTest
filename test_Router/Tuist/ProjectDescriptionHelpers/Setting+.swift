//
//  Setting+.swift
//  ProjectDescriptionHelpers
//
//  Created by Enes on 4/25/24.
//

import Foundation
import ProjectDescription

public let baseSettings: [String: SettingValue] = [
    "CODE_SIGN_STYLE": "Automatic",
    "DEVELOPMENT_TEAM": "TEAMID넣어주기",
    "Provisioning_Profile": "Automatic",
    "PROVISIONING_PROFILE_SPECIFIER": "",
    "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": "YES"
]

private let releaseBuildSetting: [String: SettingValue] = [
    "PRODUCT_NAME": "라우터 테스트",
    "SWIFT_ACTIVE_COMPILATION_CONDITIONS": ["RELEASE", "Release"],
    "PRODUCT_BUNDLE_IDENTIFIER": "product.bundle.identifier.release"
]

private let inhouseBuildSetting: [String: SettingValue] = [
    "PRODUCT_NAME": "라우터 테스트 RC",
    "ASSETCATALOG_COMPILER_APPICON_NAME": "AppIcon-RC",
    "SWIFT_ACTIVE_COMPILATION_CONDITIONS": "INHOUSE",
    "PRODUCT_BUNDLE_IDENTIFIER": "product.bundle.identifier.inhouse"
]

private let debugBuildSetting: [String: SettingValue] = [
    "PRODUCT_NAME": "라우터 테스트 Dev",
    "ASSETCATALOG_COMPILER_APPICON_NAME": "AppIcon-DEV",
    "SWIFT_ACTIVE_COMPILATION_CONDITIONS": ["DEBUG", "Debug"],
    "PRODUCT_BUNDLE_IDENTIFIER": "product.bundle.identifier.debug"
]

public let mainSetting: Settings = .settings(
    base: baseSettings,
    configurations: [
        .debug(name: .debug, settings: debugBuildSetting),
        .debug(name: .inhouse, settings: inhouseBuildSetting),
        .debug(name: .release, settings: releaseBuildSetting),
    ],
    defaultSettings: .recommended(excluding: ["ASSETCATALOG_COMPILER_APPICON_NAME"])
)
