//
//  EnviourmentModelView.swift
//  BasicSwiftUi
//
//  Created by md imran on 27/12/22.
//

import SwiftUI


class EnviouementModel: ObservableObject {
    @Published var itemList: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.itemList.append(contentsOf: ["iPhone", "Watch", "iPod"])
    }
}

struct EnviourmentModelView: View {
    
    @StateObject var viewModel: EnviouementModel = EnviouementModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.itemList, id: \.self, content: { data in
                    NavigationLink(destination: DetailsView(selectedItem: data), label: {
                        Text(data)
                    })
                })
            }
            .navigationTitle("Accesoris")
        }
        .environmentObject(viewModel)
    }
}

struct DetailsView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            NavigationLink(destination: FinalView(), label: {
                Text(selectedItem)
                    .foregroundColor(.accentColor)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            })
            
        }
        
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnviouementModel
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.itemList, id: \.self, content: { item in
                        Text(item)
                    })
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
        
    }
}

struct EnviourmentModelView_Previews: PreviewProvider {
    static var previews: some View {
        EnviourmentModelView()
    }
}
