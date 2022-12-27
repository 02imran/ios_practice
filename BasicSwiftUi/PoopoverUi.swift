//
//  PoopoverUi.swift
//  BasicSwiftUi
//
//  Created by md imran on 23/12/22.
//

import SwiftUI

struct PoopoverUi: View {
    
    @State var isChanged: Bool = false
    
    var body: some View {
        ZStack {
            Button(
            action: {
                isChanged.toggle()
            },
            label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
//            .sheet(isPresented: $isChanged, content: {
//                NewScreen()
//            })
            
            if isChanged {
                NewScreen(showScreen: $isChanged)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
            }
        }
    }
}

struct NewScreen: View {
    
    
    @Environment(\.presentationMode) var mode
    @Binding var showScreen: Bool
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(
            action: {
//                mode.wrappedValue.dismiss()
                showScreen.toggle()
            },
            label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
        }
    }
}

struct PoopoverUi_Previews: PreviewProvider {
    static var previews: some View {
        PoopoverUi()
//        NewScreen()
    }
}
