//
//  NavigationViewUi.swift
//  BasicSwiftUi
//
//  Created by md imran on 23/12/22.
//

import SwiftUI

struct NavigationViewUi: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: {
                    SecondScreenn()
                }, label: {
                    Text("Second Screen")
                })
            }
            .navigationTitle(Text("Inbox"))
        }
        
    }
}

struct NavigationViewUi_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewUi()
    }
}

struct SecondScreenn: View {
    var body: some View {
        Text("Second Screen")
    }
}
