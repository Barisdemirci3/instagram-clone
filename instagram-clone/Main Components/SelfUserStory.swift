//
//  SelfUserStory.swift
//  deneme2
//
//  Created by Barış Demirci on 24.01.2025.
//

import SwiftUI

struct SelfUserStory: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            ZStack {
                Image("handsome")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                ZStack(alignment: .center){
                    Circle()
                        .fill(Color.white)
                        .frame(width: 30, height:30)
                        .offset(x:30, y:30)
                    Image(systemName: "plus")
                        .foregroundStyle(Color.black)
                        .bold()
                        .offset(x:30, y:30)
                    Circle()
                        .fill(Color.gray.opacity(0))
                        .frame(width: 40, height:40)
                        .offset(x:30, y:30)
                        .overlay(Circle()
                            .stroke(colorScheme == .dark ? Color.black : Color.white, lineWidth: 4)
                            .frame(width: 30, height: 30)
                            .offset(x:30, y:30)
                        )
                }
            }
            Text("Siz")
                .opacity(0.5)
        }
    }
}

#Preview {
    SelfUserStory()
}
