//
//  ContentView.swift
//  DesignCodeIos15
//
//  Created by 凌有道 on 2024/12/29.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    var body: some View {
        
        ZStack(alignment: .bottom){
                        
           
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
           

           TabBar()
                
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height:44)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
                .previewDevice("iPhone 12")
//            ContentView()
//                .preferredColorScheme(.dark)
//
           
        }
    }
}
