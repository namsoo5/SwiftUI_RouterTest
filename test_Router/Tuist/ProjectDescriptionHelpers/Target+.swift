//
//  Target+.swift
//  ProjectDescriptionHelpers
//
//  Created by Enes on 4/25/24.
//

import Foundation
import ProjectDescription

// MARK: - Target

extension Target {
    /// 일반타겟이나 모듈 생성시 사용
    public static func create(
        targetName: String,
        product: Product,
        infoPlist: [String: Plist.Value],
        sources: SourceFilesList = ["Sources/**"],
        resources: ResourceFileElements?,
        entitlements: Entitlements? = nil,
        scripts: [TargetScript] = [],
        dependencies: [TargetDependency],
        settings: Settings? = nil
    ) -> Target {
        Target(
            name: targetName,
            destinations: .iOS,
            product: product,
            bundleId: Project.organizationName + "." + workspaceName + "." + targetName,
            deploymentTargets: .iOS("16.0"),
            infoPlist: .extendingDefault(with: infoPlist),
            sources: sources,
            resources: resources,
            entitlements: entitlements,
            scripts: scripts,
            dependencies: dependencies,
            settings: settings
        )
    }
}
