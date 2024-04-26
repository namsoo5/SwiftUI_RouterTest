//
//  MainView.swift
//  Router
//
//  Created by Enes on 4/25/24.
//  Copyright © 2024 com.nsios. All rights reserved.
//

import SwiftUI
import RouterCore
import FeatureB
import FeatureC

struct MainViewA: View {
//    @StateObject var router = RouterA()
//    @StateObject var router = RouterB()
    @StateObject var router = RouterC()
    var body: some View {
        NavigationStack(path: $router.route) {
            VStack {
                Text("A Feature View")
                Button {
                    router.push(screen: ScreenB.featureB1)
                } label: {
                    Text("B1로 이동")
                }
                Button {
                    router.push(screen: ScreenC.featureC1)
                } label: {
                    Text("C1로 이동")
                }
                
            }
            .navigationDestination(for: Data.self) { data in
                decodeScreenRouterC(data: data)
                    .environmentObject(router)
            }
//            .navigationDestination(for: ScreenB.self) { type in
//                FeatureBView(type: type)
//                    .environmentObject(router)
//            }
//            .navigationDestination(for: ScreenC.self) { type in
//                FeatureCView(type: type)
//                    .environmentObject(router)
//            }
        }
    }
//
//    @ViewBuilder
//    private func screenAView(type: ScreenA) -> some View {
//        switch type {
//        case .featureB1:
//            MainB1View()
//        case .featureB2:
//            MainB2View()
//        case .featureB3:
//            MainB3View()
//        case .featureC1:
//            MainC1View()
//        case .featureC2:
//            MainC2View()
//        case .featureC3:
//            MainC3View()
//        }
//    }
    
    @ViewBuilder
    func decodeScreenRouterC(data: Data) -> some View {
        if let screenB = try? JSONDecoder().decode(ScreenB.self, from: data) {
            FeatureBView(type: screenB)
        } else if let screenC = try? JSONDecoder().decode(ScreenC.self, from: data) {
            FeatureCView(type: screenC)
        }
    }
}

struct FeatureBView: View {
    let type: ScreenB
    
    var body: some View {
        if type == .featureB1 {
            MainB1View()
        } else if type == .featureB2 {
            MainB2View()
        } else if type == .featureB3 {
            MainB3View()
        }
    }
}

struct FeatureCView: View {
    let type: ScreenC
    
    var body: some View {
        if type == .featureC1 {
            MainC1View()
        } else if type == .featureC2 {
            MainC2View()
        } else if type == .featureC3 {
            MainC3View()
        }
    }
}
