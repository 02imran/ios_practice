//
//  Shape.swift
//  BasicSwiftUi
//
//  Created by md imran on 17/12/22.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        Rectangle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50, alignment: .center)
                    
            ).background(
                Rectangle()
                    .frame(width: 150, height: 150)
                    
            )
    }
}

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Shape()
    }
}
