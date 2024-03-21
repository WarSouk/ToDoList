//
//  RegisterView.swift
//  ToDoListSwiftUI
//
//  Created by Максим Лопатин on 27.1.24..
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    @State var name = ""
    
    var body: some View {
        VStack{
            //HEADER
            HeaderView(title: "Register",
                       subtitle: "Start organazing todos", 
                       angle: -15,
                       background: .orange)
            
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create account",
                    background: .green
                ) {
                    // Attempt Registration
                }
                
                
            }
            .offset(y: -50)
            
            
            Spacer()
        }
    }
}











#Preview {
    RegisterView()
}
