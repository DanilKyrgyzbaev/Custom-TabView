# Custom-TabView
Custom TabView


<img width="1166" alt="Снимок экрана 2023-07-05 в 10 29 33" src="https://github.com/DanilKyrgyzbaev/Custom-TabView/assets/44808085/039f0b22-958e-427f-8ec3-1b63dea4dc6b">

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

//
//  CustomTabBarView.swift
//  Custom TabView
//
//  Created by Macbook on 4/7/23.
//

import SwiftUI

struct CustomTabs: View {
    @Binding var index: Int
    
    var body: some View {
        HStack {
            Button(action: {
                self.index = 0
            }) {
                VStack {
                    Image(self.index == 0 ? "home.fill" : "home")
                    Text("Главная")
                        .font(.system(size: 11))
                        .foregroundColor(.black)
                }
            }.foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.1))
            Spacer(minLength: 0)
            Button(action: {
                self.index = 1
            }) {
                VStack {
                    Image(self.index == 1 ? "favorites.fill" : "favorites")
                    Text("Избранное")
                        .font(.system(size: 11))
                        .foregroundColor(.black)
                }
            }.foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.1))
            Spacer(minLength: 0)
            Button(action: {
                self.index = 2
            }) {
                VStack {
                    Image("advertise")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(24)
                        .background(Color("royalblue"))
                        .clipShape(Circle())
                    
                    Text("Подать")
                        .font(.system(size: 11))
                        .foregroundColor(.black)
                }
            }.offset(y: -20)
            
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 3
            }) {
                VStack {
                    Image(self.index == 3 ? "chats.fill" : "chats")
                    Text("Чаты")
                        .font(.system(size: 11))
                        .foregroundColor(.black)
                }
            }.foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.1))
            Spacer(minLength: 0)
            Button(action: {
                self.index = 4
            }) {
                VStack {
                    Image(self.index == 4 ? "profile.fill" : "profile")
                    Text("Профиль")
                        .font(.system(size: 11))
                        .foregroundColor(.black)
                }
            }.foregroundColor(Color.black.opacity(self.index == 4 ? 1 : 0.1))
        }
        .padding(.horizontal, 20)
        .background(Color.white.cornerRadius(11))
    }
}


