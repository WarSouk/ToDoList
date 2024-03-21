//
//  LoginView.swift
//  ToDoListSwiftUI
//
//  Created by Максим Лопатин on 27.1.24..
//

import SwiftUI



struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To do list", 
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                
                //Login Form
                Form{
                    TextField("Email Adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Login",
                        background: .blue
                    ) {
                        // Attempt Log In
                    }
                }
                .offset(y: -80)
                
                //Create Account
                
                VStack{
                    Text("Doesnt have an account?")
                    
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 40)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
