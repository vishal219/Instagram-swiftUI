//
//  TabbarView.swift
//  Gram
//
//  Created by IndianRenters on 23/06/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Image("tabbar-home")
                }
            
            Text("Search")
                .tabItem {
                    Image("tabbar-search")
                }
            
            Text("Add")
                .tabItem {
                    Image("tabbar-add")
                }
            Text("Reels")
                .tabItem {
                    Image("tabbar-reels")
                }
            
            Text("Settings")
                .tabItem {
                    Image("tabbar-home")
                }
            
            
        }
        .toolbar(.hidden)
    }
}

#Preview {
    TabbarView()
}
