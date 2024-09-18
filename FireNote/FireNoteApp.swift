//
//  FireNoteApp.swift
//  FireNote
//
//  Created by Marcello Gonzatto Birkan on 12/09/24.
//

import SwiftUI
import FirebaseCore

@main
struct FireNoteApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  
    var body: some Scene {
        WindowGroup {
          LoginView()
        }
    }
}
