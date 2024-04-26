//
//  RouterA.swift
//  Router
//
//  Created by Enes on 4/25/24.
//  Copyright © 2024 com.nsios. All rights reserved.
//

import Foundation

public final class RouterA: ObservableObject {
   @Published public var route: [ScreenA] = []
   public init() { }
   
   @MainActor
   public func push(screen: ScreenA) {
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
        route.removeAll()
    }
   
   @MainActor
   public func switchScreen(screen: ScreenA) {
       guard !route.isEmpty else { return }
       let lastIndex = route.count - 1
       route[lastIndex] = screen
   }
}



