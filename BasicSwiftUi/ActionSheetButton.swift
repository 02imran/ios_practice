//
//  ActionSheetButton.swift
//  BasicSwiftUi
//
//  Created by md imran on 24/12/22.
//

import SwiftUI

struct ActionSheetButton: View {
    
    @State var isToggle: Bool = false
    
    var body: some View {
        Button ("Action Sheet") {
            isToggle.toggle()
        }
        .actionSheet(isPresented: $isToggle, content: getActionSheet)
    }
    
    func getActionSheet () -> ActionSheet {
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .cancel(Text("Cancel"))
        let button3: ActionSheet.Button = .destructive(Text("district"))
        
        return ActionSheet(title: Text("Title"), message: Text("This is message"), buttons: [button1, button2, button3])
    }
}

struct ActionSheetButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetButton()
    }
}
