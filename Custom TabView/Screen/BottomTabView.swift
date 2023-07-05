//
//  BottomTabView.swift
//  Custom TabView
//
//  Created by Macbook on 4/7/23.
//

import SwiftUI

struct BottomTabView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            VStack {
                switch selectedTab {
                case 0:
                    HomeView()
                case 1:
                    FavoritesView()
                case 2:
                    // Your code for the "Add" tab
                    AdvertiseView()
                case 3:
                    ChatsView()
                case 4:
                    ProfileView()
                default:
                    EmptyView()
                }
            }
            
            Spacer()
            
            CustomTabs(index: $selectedTab)
        }.background(Color.black.opacity(0.5)).ignoresSafeArea()
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
