//
//  dailyAppApp.swift
//  dailyApp
//
//  Created by 주환 on 2023/03/18.
//

import SwiftUI

@main
struct dailyAppApp: App {
    @StateObject var stories = Stories()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(stories)
        }
    }
}
