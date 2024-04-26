//
//  MainView.swift
//  Router
//
//  Created by Enes on 4/25/24.
//  Copyright © 2024 com.nsios. All rights reserved.
//

import SwiftUI
import RouterCore

public struct MainC1View: View {
    //    @EnvironmentObject var router: RouterA
    //    @EnvironmentObject var router: RouterB
    @EnvironmentObject var router: RouterC
    
    public init() {}
    public var body: some View {
        VStack {
            Text("MainC 1 View")
//            Button {
//                router.push(screen: ScreenB.featureB2)
//            } label: {
//                Text("B2로 이동")
//            }
            Button {
                router.push(screen: ScreenC.featureC2)
            } label: {
                Text("C2로 이동")
            }
        }
    }
}

public struct MainC2View: View {
    //    @EnvironmentObject var router: RouterA
    //    @EnvironmentObject var router: RouterB
    @EnvironmentObject var router: RouterC
    
    public init() {}
    public var body: some View {
        VStack {
            Text("MainC 2 View")
//            Button {
//                router.push(screen: .featureB3)
//            } label: {
//                Text("B3로 이동")
//            }
            Button {
                router.push(screen: ScreenC.featureC3)
            } label: {
                Text("C3로 이동")
            }
        }
    }
}

public struct MainC3View: View {
    //    @EnvironmentObject var router: RouterA
    //    @EnvironmentObject var router: RouterB
    @EnvironmentObject var router: RouterC
    
    public init() {}
    public var body: some View {
        VStack {
            Text("MainC 3 View")
            Button {
                router.popToRoot()
            } label: {
                Text("루트로 이동")
            }
        }
    }
}
