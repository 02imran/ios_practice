//
//  BindingUi.swift
//  BasicSwiftUi
//
//  Created by md imran on 21/12/22.
//

import SwiftUI

struct BindingUi: View {
    
    @State var backgroundColor: Color = Color.green
        
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            CustomButton(BackgroundColor: $backgroundColor)
        }
    }
}

struct BindingUi_Previews: PreviewProvider {
    static var previews: some View {
        BindingUi()
    }
}

struct CustomButton: View {
    
    @Binding var BackgroundColor: Color
    
    var body: some View {
        Button(action: {
            BackgroundColor = Color.red
        }, label: {
            Text("Change Color")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(Color.blue)
                .cornerRadius(10)
        })
    }
}
