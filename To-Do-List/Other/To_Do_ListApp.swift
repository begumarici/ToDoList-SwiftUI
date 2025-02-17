//
//  To_Do_ListApp.swift
//  To-Do-List
//
//  Created by Begüm Arıcı on 16.02.2025.
//

import FirebaseCore
import SwiftUI

@main
struct To_Do_ListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
