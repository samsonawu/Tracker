//
//  CheckboxFieldView.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

struct CheckboxFieldView: View {
    
    @State var checkState: Bool = false
    @State var item: Text
    
    var body: some View {
        
         Button(action:
            {
                //1. Save state
                self.checkState = !self.checkState
                print("State : \(self.checkState)")
                
                
        }) {
            HStack(alignment: .top, spacing: 10) {
                 
                        //2. Will update according to state
                   Rectangle()
                            .fill(self.checkState ? Color.green : Color.blue)
                            .frame(width:15, height:15, alignment: .center)
                            .cornerRadius(5)
                     
                   item
                    .allowsTightening(true)
                    .lineLimit(1)
                 
            }
        }
        .foregroundColor(Color.white)
  
    }
    
}

struct CheckboxFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxFieldView(item: Text(""))
    }
}
