//
//  PopUpSheet.swift
//  BasicSwiftUi
//
//  Created by md imran on 22/12/22.
//

import SwiftUI

struct PopUpSheet: View {
    
    @State var isDragable: Bool = false
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                isDragable.toggle()
            }, label: {
                Text("Second Screen")
                    .foregroundColor(.blue)
                    .padding()
                    .padding(.horizontal, 23)
                    .background(Color.white)
                    .cornerRadius(20)
            })
            .fullScreenCover(isPresented: $isDragable, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Second Screen")
                    .foregroundColor(.blue)
                    .padding()
                    .padding(.horizontal, 23)
                    .background(Color.white)
                    .cornerRadius(20)
            })
            
        }
    }
}

struct PopUpSheet_Previews: PreviewProvider {
    static var previews: some View {
        PopUpSheet()
    }
}
