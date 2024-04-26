//
//  ScreenA.swift
//  Router
//
//  Created by Enes on 4/25/24.
//  Copyright © 2024 com.nsios. All rights reserved.
//

import Foundation

public enum ScreenA: Hashable {
    case featureB1
    case featureB2
    case featureB3
    case featureC1
    case featureC2
    case featureC3
}

/*
public final class RouterA: ObservableObject {
   @Published public var route: [Data] = []
   public init() { }
   
   @MainActor
   public func push<T: Codable>(screen: T) {
       let data = try! JSONEncoder().encode(screen)
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
   public func switchScreen<T: Codable>(screen: T) {
       guard !route.isEmpty else { return }
       let data = try! JSONEncoder().encode(screen)
       let lastIndex = route.count - 1
       route[lastIndex] = data
   }
}
*/
