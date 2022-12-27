//
//  DeleteAddItem.swift
//  BasicSwiftUi
//
//  Created by md imran on 24/12/22.
//

import SwiftUI

struct DeleteAddItem: View {
    
    @State var fruit: [String] = [
        "Apple", "Orange", "Banana"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("List"), content: {
                    ForEach(fruit, id: \.self, content: { index in
                        Text("\(index)")
                    })
                    .onDelete(perform: delete)
                })

            }
            .navigationTitle("Item")
            .navigationBarItems(leading: EditButton())
        }
    }
    func delete (indexSet: IndexSet){
        fruit.remove(atOffsets: indexSet)
    }
}

struct DeleteAddItem_Previews: PreviewProvider {
    static var previews: some View {
        DeleteAddItem()
    }
}
