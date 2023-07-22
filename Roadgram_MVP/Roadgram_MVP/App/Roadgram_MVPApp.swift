//
//  Roadgram_MVPApp.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate:NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchingOptions: [UIApplication.LaunchOptionsKey: Any]? = nil ) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
}

@main
struct Roadgram_MVPApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate 
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
