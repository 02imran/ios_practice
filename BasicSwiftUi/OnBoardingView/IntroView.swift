//
//  IntroView.swift
//  BasicSwiftUi
//
//  Created by md imran on 27/12/22.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signin_user") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.yellow, .green]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
            } else {
                OnboardingView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
