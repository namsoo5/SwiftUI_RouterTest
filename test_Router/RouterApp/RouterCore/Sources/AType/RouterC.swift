//
//  RouterC.swift
//  RouterCore
//
//  Created by Enes on 4/26/24.
//  Copyright © 2024 com.nsios. All rights reserved.
//

import Foundation

public final class RouterC: ObservableObject {
    @Published public var route: [Data] = []
    let encoder = JSONEncoder()
    public init() { }
    
    @MainActor
    public func push<T: Codable>(screen: T) {
        let data = try! encoder.encode(screen)
        route.append(data)
    }
    
    @MainActor
    public func pop() {
        route.removeLast()
    }
    
    @MainActor
    public func pop(depth: Int) {
        route.removeLast(depth)
    }
    
    @MainActor
    public func popToRoot() {
        route.removeAll()
    }
    
    @MainActor
    public func switchScreen<T: Codable>(screen: T) {
        guard !route.isEmpty else { return }
        let data = try! encoder.encode(screen)
        let lastIndex = route.count - 1
        route[lastIndex] = data
    }
}

