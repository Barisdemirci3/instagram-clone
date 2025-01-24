//
//  Storys.swift
//  deneme2
//
//  Created by Barış Demirci on 23.01.2025.
//

import SwiftUI

struct Storys: View {
    @Environment(\.colorScheme) var colorScheme
    var name: String
    var body: some View {
        VStack {
            ZStack {
                Image("handsome")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                Circle()
                    .fill(Color.red.opacity(0))
                    .frame(width: 80, height: 80)
                    .overlay(Circle().stroke(LinearGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.orange, Color.red]),
                        startPoint: .leading,
                        endPoint: .trailing), lineWidth: 5))
                Circle()
                    .fill(Color.red.opacity(0))
                    .frame(width: 70, height: 70)
                    .overlay(Circle().stroke(colorScheme == .dark ? Color.black : Color.white, lineWidth: 5))
            }
            Text(self.name)
                .opacity(0.5)
        }
    }
}

#Preview {
    Storys(name: "Barış")
}
