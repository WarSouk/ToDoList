//
//  TLButton.swift
//  ToDoListSwiftUI
//
//  Created by Максим Лопатин on 8.2.24..
//

import SwiftUI

struct TLButton: View {
    
    let title:String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            // Action\
            action()
        }label:{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        // Action
    }
}
