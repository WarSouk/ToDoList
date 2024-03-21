//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Максим Лопатин on 27.1.24..
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListSwiftUIApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
