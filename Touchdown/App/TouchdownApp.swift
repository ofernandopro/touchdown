//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Fernando on 21/07/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
