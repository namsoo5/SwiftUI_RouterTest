//
//  MainView.swift
//  Router
//
//  Created by Enes on 4/25/24.
//  Copyright © 2024 com.nsios. All rights reserved.
//

import SwiftUI
import RouterCore

public struct MainB1View: View {
    //    @EnvironmentObject var router: RouterA
//        @EnvironmentObject var router: RouterB
    @EnvironmentObject var router: RouterC
    
    public init() {}
    public var body: some View {
        VStack {
            Text("MainB 1 View")
            Button {
                router.push(screen: ScreenB.featureB2)
            } label: {
                Text("B2로 이동")
            }
            Button {
                router.switchScreen(screen: ScreenB.featureB3)
            } label: {
                Text("B3로 화면전환")
            }
//            Button {
//                router.push(screen: ScreenC.featureC1)
//            } label: {
//                Text("C2로 이동")
//            }
        }
    }
}

public struct MainB2View: View {
    //    @EnvironmentObject var router: RouterA
    //    @EnvironmentObject var router: RouterB
    @EnvironmentObject var router: RouterC
    
    public init() {}
    public var body: some View {
        VStack {
            Text("MainB 2 View")
            Button {
                router.push(screen: ScreenB.featureB3)
            } label: {
                Text("B3로 이동")
            }
//            Button {
//                router.push(screen: .featureC3)
//            } label: {
//                Text("C3로 이동")
//            }
        }
    }
}

public struct MainB3View: View {
    public init() {}
    public var body: some View {
        Text("MainB 3 View")
    }
}
