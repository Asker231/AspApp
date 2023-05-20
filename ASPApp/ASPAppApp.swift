//
//  ASPAppApp.swift
//  ASPApp
//
//  Created by ASKER on 20.05.2023.
//

import SwiftUI
import FirebaseCore

@main
struct ASPAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
