//
//  ContentView.swift
//  Custom TabView
//
//  Created by Macbook on 3/7/23.
//

import SwiftUI
struct MainView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        VStack {
            Spacer()
            CustomTabView(tabs: [
                TabItemData(image: "house",selectedImage: "house.fill",title: "Home"),
                TabItemData(image: "bell", selectedImage: "bell.fill", title: "Notifications"),
                TabItemData(image: "bell", selectedImage: "bell.fill", title: "Advertise"),
                TabItemData(image: "person", selectedImage: "person.fill", title: "Profile"),
                TabItemData(image: "person", selectedImage: "person.fill", title: "Chats")
            ], selectedIndex: $selectedTab) { index in
                if index == 0 {
                    HomeView()
                } else if index == 1 {
                    NotificationsView()
                }else if index == 2 {
                    AdvertiseView()
                }
                else if index == 3 {
                    ProfileView()
                } else if index == 4 {
                    ChatsView()
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
