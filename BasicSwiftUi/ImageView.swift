//
//  ImageView.swift
//  BasicSwiftUi
//
//  Created by md imran on 17/12/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("image")
            .resizable()
            .renderingMode(.original)
            .scaledToFit()
            .frame(width: 300, height: 300, alignment: .center)
            .cornerRadius(300)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
