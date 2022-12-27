//
//  AnimatedRactangle.swift
//  BasicSwiftUi
//
//  Created by md imran on 22/12/22.
//

import SwiftUI

struct AnimatedRactangle: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                isAnimated.toggle()
                
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            
             Circle()
                .fill(!isAnimated ? .blue : .red)
                .frame(width: 100)
                
        }
    }
}

struct AnimatedRactangle_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedRactangle()
    }
}
