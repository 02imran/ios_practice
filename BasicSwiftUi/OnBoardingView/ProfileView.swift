//
//  ProfileView.swift
//  BasicSwiftUi
//
//  Created by md imran on 28/12/22.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signin_user") var currentUserSignedIn: Bool = false
    
    
    var body: some View {
        VStack {
            Text(currentUserName ?? "No Name")
            Text("\(currentUserAge ?? 0)")
            Text(currentUserGender ?? "No Name")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
