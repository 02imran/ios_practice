//
//  PickerTest.swift
//  BasicSwiftUi
//
//  Created by md imran on 26/12/22.
//

import SwiftUI

struct PickerTest: View {
    
    @State var pickerAge: String = "1"
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Age")
                Text("\(pickerAge)")
            }
            
            Picker("Age", selection: $pickerAge,
                content: {
                ForEach(18..<100, content: { data in
                    Text("\(data)")
                        .tag("\(data)")
                    
                })
            })
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct PickerTest_Previews: PreviewProvider {
    static var previews: some View {
        PickerTest()
    }
}
