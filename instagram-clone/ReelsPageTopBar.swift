//
//  ReelsPageTopBar.swift
//  instagram-clone
//
//  Created by Barış Demirci on 25.01.2025.
//

import SwiftUI

struct ReelsPageTopBar: View {
    var body: some View {
        HStack{
            Text("Reels")
                .bold()
                .font(.title)
            Spacer()
            Image(systemName: "camera")
                .resizable()
                .frame(width: 28, height: 28)
        }
        .padding()
    }
}

#Preview {
    ReelsPageTopBar()
}
