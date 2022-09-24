//
//  DecagonTestApp.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

@main
struct DecagonTestApp: App {
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
