//
//  ViewModelSwift.swift
//  BasicSwiftUi
//
//  Created by md imran on 27/12/22.
//

import SwiftUI


struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    func getFruits () {
        let fruit1 = FruitModel(name: "Orange", count: 4)
        let fruit2 = FruitModel(name: "Mango", count: 10)
        let fruit3 = FruitModel(name: "Apple", count: 4)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
            
        }
        
        
    }
    
    func deleteAtIndex (index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelSwift: View {
    
//    @State var fruitArray: [FruitModel] = []
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(fruitViewModel.fruitArray, content: { fruit in
                    HStack {
                        Text("\(fruit.count)")
                        Text(fruit.name)
                    }
                }
                
                    )
                .onDelete(perform: fruitViewModel.deleteAtIndex)
            }
            .navigationTitle("Fruits")
            .onAppear {
                fruitViewModel.getFruits()
            }
            
            
        }
    }
    
 
}

struct ViewModelSwift_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelSwift()
    }
}
