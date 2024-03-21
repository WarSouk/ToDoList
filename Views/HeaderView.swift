//
//  HeaderView.swift
//  ToDoListSwiftUI
//
//  Created by Максим Лопатин on 27.1.24..
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            
            VStack{
                Text(title)
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 32))
                    .foregroundColor(.white)
                    
        
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -185)
    }
}

#Preview {
    HeaderView(title:"Title" , subtitle: "Subtitle", angle: 15, background: .blue)
}
