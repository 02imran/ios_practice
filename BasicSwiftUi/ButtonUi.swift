//
//  ButtonUi.swift
//  BasicSwiftUi
//
//  Created by md imran on 21/12/22.
//

import SwiftUI

struct ButtonUi: View {
    @State var buttonName: String = "Pressed"
    var body: some View {
        VStack {
//            Button (buttonName) {
//                buttonName = "Button"
//            }
            Text(buttonName)
            
            Button(action: {
                self.buttonName = "Button Pressed"
            }, label: {
                Text("Clicke me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .padding(.horizontal, 20)
                    .background(Color.blue
                        .shadow(color: .white, radius: 20, x: 10, y: 20 )
                    )
                    .cornerRadius(10)
                    
                
            })
            
            Button(action: {
                
            }, label: {
                Text("Button 3")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3)
                    )
            })
        }
    }
}

struct ButtonUi_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUi()
    }
}
