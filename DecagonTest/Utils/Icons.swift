//
//  Icons.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

struct Icons: View {
    @State var name: String
    var body: some View {
        Image(systemName: name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 18, height: 18)
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons(name: "photo")
    }
}
