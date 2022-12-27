//
//  OnboardingView.swift
//  BasicSwiftUi
//
//  Created by md imran on 27/12/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var onBoardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
    @State var textFieldName: String = ""
    @State var age: Double = 30
    @State var gender: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signin_user") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            
            ZStack {
                switch onBoardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    Text("Default")
                }
            }
            
            VStack {
                Spacer()
                buttomButton
            }
            .padding(30)
        }.alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
    

}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

extension OnboardingView {
    private var buttomButton: some View {
        Text(onBoardingState == 0 ? "Sign in" : onBoardingState == 3 ? "Finished" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(minHeight: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(15)
            .onTapGesture {
                handleOnPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
        }
    }
    
    private var addNameSection: some View {
        VStack {
            Text("Name here")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            TextField("Name", text: $textFieldName)
                .frame(height: 50   )
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(5)
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack {
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack {
            Text("Gender here")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Picker("Select gender", selection: $gender, content: {
                Text("Male")
                    .tag("male")
                Text("Female")
                    .tag("female")
            }).pickerStyle(MenuPickerStyle())
        }
        .padding(30)
    }
}


extension OnboardingView {
    func handleOnPressed () {
        
        switch onBoardingState{
        case 1:
            guard textFieldName.count >= 3 else {
                alertTitle = "Cannot be empty"
                showAlert.toggle()
                return
            }
        default:
            break
        }
        
        
        if onBoardingState == 3 {
            signedIn()
        } else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }
        
        func signedIn() {
            currentUserName = textFieldName
            currentUserAge = Int(age)
            currentUserGender = gender
            withAnimation(.spring()) {
                currentUserSignedIn = true
            }
        }
        
    }
}
