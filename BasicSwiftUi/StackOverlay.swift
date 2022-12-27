//
//  StackOverlay.swift
//  BasicSwiftUi
//
//  Created by md imran on 17/12/22.
//

import SwiftUI

struct StackOverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 50))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 100,height: 100)
                    .shadow(color: Color.black, radius: 5, x: 3, y: 4)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("4")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color.gray, radius: 10)
                        ,alignment: .bottomTrailing
                        
                    )
            )
                
    }
}

struct StackOverlay_Previews: PreviewProvider {
    static var previews: some View {
        StackOverlay()
    }
}
