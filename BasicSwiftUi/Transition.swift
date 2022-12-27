//
//  Transition.swift
//  BasicSwiftUi
//
//  Created by md imran on 22/12/22.
//

import SwiftUI

struct Transition: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button("Button") {
                    isAnimated.toggle()
                }
                Spacer()
            }
            
            if isAnimated {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(.red)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(isAnimated ? 1.0 : 0.0)
                    .transition(.slide)
                    .animation(.easeIn, value: 5)
//                    .animation(.easeIn, value: 2)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
