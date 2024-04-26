//
//  RouterB.swift
//  RouterCore
//
//  Created by Enes on 4/26/24.
//  Copyright © 2024 com.nsios. All rights reserved.
//

import Foundation
import SwiftUI

public final class RouterB: ObservableObject {
    @Published public var route = NavigationPath()
    public init() { }
    
    @MainActor
    public func push<T: Hashable>(screen: T) {
        route.append(screen)
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
         route = NavigationPath()
     }
    
    @MainActor
    public func switchScreen<T: Hashable>(screen: T) {
        guard !route.isEmpty else { return }
        var tempRoute = route
        tempRoute.removeLast()
        tempRoute.append(screen)
        route = tempRoute
    }
}




