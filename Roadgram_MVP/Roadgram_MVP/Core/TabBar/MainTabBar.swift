//
//  MainTabBar.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onAppear(){
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "homekit")
                }.tag(0)
            SearchView()
                .onAppear(){
                    selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            UploadPostView(tabIndex: $selectedIndex)
                .onAppear(){
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus")
                }.tag(2)
            
            
            CurrentUserProfileView(user:User.MOCK_USERS[0])
                .onAppear(){
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "person")
                } .tag(3)
            
            
            Text("Alerts")
                .onAppear(){
                    selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(4)
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
