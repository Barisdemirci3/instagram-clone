//
//  OtherProfileTopBar.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct OtherProfileTopBar: View {
    @State var nickName: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.backward")
                Text("\(nickName)")
                    .bold()
                    .font(.title)
                Spacer()
                Image(systemName: "ellipsis")
            }
        }
        .padding()
    }
}

#Preview {
    OtherProfileTopBar(nickName: "Barış")
}
