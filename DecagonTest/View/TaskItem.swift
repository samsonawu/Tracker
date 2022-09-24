//
//  TaskItem.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

struct TaskItem: View {
    @State var item: Text
    @State var backgroundColor: Color
    
    var body: some View {
        HStack{
            CheckboxFieldView(checkState: false, item: item)
            Spacer()
            Image(systemName: "pencil")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15, height: 15)
            Image(systemName: "xmark.bin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15, height: 15)
        }
        .padding(.all, 10)
        .background(backgroundColor)
        .cornerRadius(15)
    }
}

struct TaskItem_Previews: PreviewProvider {
    static var previews: some View {
        TaskItem(item: Text(""), backgroundColor: .purple)
    }
}
