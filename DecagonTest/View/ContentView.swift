//
//  ContentView.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    switch viewRouter.currentView {
                     case .home:
                         HomeView()
                     case .search:
                         Text("Search")
                     case .notification:
                         Text("Notifications")
                     case .settings:
                         Text("Settings")
                     }
                    Spacer()
                    HStack {
                         TabBarIcon(viewRouter: viewRouter, assignedView: .home, width: geometry.size.width/5, height: geometry.size.height/40, systemIconName: "house", tabName: "Home")
                         TabBarIcon(viewRouter: viewRouter, assignedView: .search, width: geometry.size.width/5, height: geometry.size.height/40, systemIconName: "magnifyingglass", tabName: "Search")
                        ZStack {
                            
                             Circle()
                                 .foregroundColor(.white)
                                 .frame(width: geometry.size.width/7, height: geometry.size.width/7)
                                 .shadow(radius: 8)
                            
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width/7-6 , height: geometry.size.width/7-6)
                                .foregroundColor(Color("DarkGrren"))
                         }
                        .offset(y: -geometry.size.height/8/2)

                         TabBarIcon(viewRouter: viewRouter, assignedView: .notification, width: geometry.size.width/5, height: geometry.size.height/40, systemIconName: "bell", tabName: "Notifications")
                         TabBarIcon(viewRouter: viewRouter, assignedView: .settings, width: geometry.size.width/5, height: geometry.size.height/40, systemIconName: "gearshape", tabName: "Settings")
                     }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color(.white).shadow(radius: 2))
                }
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
