//
//  TaskIndicator.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

struct TaskIndicator: View {
    @State var height: CGFloat
    @State var color: Color
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.gray)
                .frame(width: 10, height: 100)
                .overlay(
            VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(color)
                    .frame(width: 10, height: height)
                    //.edgesIgnoringSafeArea(.bottom)
               
            }
                )
          
        }
    }
}

struct TaskIndicator_Previews: PreviewProvider {
    static var previews: some View {
        TaskIndicator(height: 10, color: .blue)
    }
}
