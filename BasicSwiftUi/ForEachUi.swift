//
//  ForEach.swift
//  BasicSwiftUi
//
//  Created by md imran on 18/12/22.
//

import SwiftUI

struct ForEachUi: View {
    var body: some View {
        VStack {
            ForEach(1..<11) { index in
                Text("Item \(index)")
            }
        }
    }
}

struct ForEach_Previews: PreviewProvider {
    static var previews: some View {
        ForEachUi()
    }
}
