//
//  TabViewUi.swift
//  BasicSwiftUi
//
//  Created by md imran on 26/12/22.
//

import SwiftUI

struct TabViewUi: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ExtractedView(selectedTab: $selectedTab)
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("House")
            }.tag(0)
            
            Text("Out")
                .tabItem{
                    Image(systemName: "square.and.arrow.up")
                    Text("Out")
                }.tag(1)
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)
        }
    }
}

struct TabViewUi_Previews: PreviewProvider {
    static var previews: some View {
        TabViewUi()
    }
}

struct ExtractedView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Home")
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Got to")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                })
            }
                
        }
    }
}
