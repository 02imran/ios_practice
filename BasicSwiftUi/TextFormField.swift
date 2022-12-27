//
//  TextFormField.swift
//  BasicSwiftUi
//
//  Created by md imran on 24/12/22.
//

import SwiftUI

struct TextFormField: View {
    
    @State var textFieldForm: String = ""
    @State var saveText: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Your Text", text: $textFieldForm)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(20))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    saveText.append(textFieldForm)
                    textFieldForm = ""
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .padding(.horizontal, 20)
                        .background(Color.blue.cornerRadius(20))
                        .foregroundColor(.white)
                        .font(.headline)
                })
                
                ForEach(saveText, id: \.self, content: {data in
                    Text(data)
                })
                
                Spacer()
            }
            .navigationTitle("Title")
            .padding()
        }
        
    }
}

struct TextFormField_Previews: PreviewProvider {
    static var previews: some View {
        TextFormField()
    }
}
