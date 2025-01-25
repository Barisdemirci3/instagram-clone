//
//  TopBar.swift
//  deneme2
//
//  Created by Barış Demirci on 23.01.2025.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        VStack{
            HStack {
                Text("Senin için")
                    .font(.title)
                    .bold()
                    Image(systemName: "chevron.down")
                Spacer()
                HStack(spacing: 16) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 28, height: 28)
                    ZStack{
                        Image(systemName: "ellipsis.message")
                            .resizable()
                            .frame(width: 28, height: 28)
                        Circle()
                            .frame(width: 20, height: 20)
                            .offset(x:10, y:-10)
                            .foregroundStyle(.red)
                        Text("3")
                            .font(.system(size: 16))
                            .frame(width: 20, height: 20)
                            .offset(x:10, y:-10)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
#Preview {
    TopBar()
}
