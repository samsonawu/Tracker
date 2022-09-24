//
//  ViewRouter.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import Foundation
import SwiftUI


enum Views {
     case home
     case search
     case notification
     case settings
 }

class ViewRouter: ObservableObject {
    @Published var currentView: Views = .home
}
