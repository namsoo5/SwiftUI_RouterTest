//
//  TargetDependency.swift
//  ProjectDescriptionHelpers
//
//  Created by Enes on 4/25/24.
//

import Foundation

import ProjectDescription

public extension TargetDependency {
    static func module(_ target: Module) -> TargetDependency {
        return .project(target: target.rawValue, path: .relativeToRoot("\(workspaceName)/\(target.rawValue)"))
    }
}
