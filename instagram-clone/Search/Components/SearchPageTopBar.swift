//
//  SearchPageTopBar.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct SearchPageTopBar: View {
    @State var inputText : String = ""
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(Color.gray)
                    TextField("Ara", text: $inputText)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray).opacity(0.2))
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(style: StrokeStyle(lineWidth: 0)))
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
        .padding()
    }
}

#Preview {
    SearchPageTopBar()
}
