//
//  TabBarIcon.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedView: Views
     let width, height: CGFloat
     let systemIconName, tabName: String
     
     
     var body: some View {
         VStack {
             Image(systemName: systemIconName)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: width, height: height)
                 .padding(.top, 10)
             Text(tabName)
                 .font(.footnote)
             Spacer()
         }
         .padding(.horizontal, -4)
         .onTapGesture {
             viewRouter.currentView = assignedView
         }
         .foregroundColor(viewRouter.currentView == assignedView ? Color("DarkGrren") : .gray)
     }
 }
