//
//  Scheme+.swift
//  ProjectDescriptionHelpers
//
//  Created by Enes on 4/25/24.
//

import Foundation
import ProjectDescription

// Tuist 기본 설정 - Target당 Scheme자동생성
extension Scheme {
    public static func create(
        name: String,
        hidden: Bool = true,
        configuration: ProjectDescription.ConfigurationName
    ) -> Scheme {
        Scheme(
            name: configuration == .debug ? name : "\(name)-\(configuration.rawValue)",
            hidden: hidden,
            buildAction: .buildAction(
                targets: [TargetReference(stringLiteral: name)]
            ),
            runAction: .runAction(configuration: configuration),
            archiveAction: .archiveAction(configuration: configuration),
            profileAction: .profileAction(configuration: configuration),
            analyzeAction: .analyzeAction(configuration: configuration)
        )
    }
}

extension ConfigurationName {
    public static var inhouse: ConfigurationName = .configuration("Inhouse")
}
