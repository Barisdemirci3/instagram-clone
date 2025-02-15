//
//  ProfileFavorites.swift
//  instagram-clone
//
//  Created by Barış Demirci on 24.01.2025.
//

import SwiftUI

struct ProfileFavorites: View {
    @Environment(\.colorScheme) var colorScheme
    var profileFavoriteName : String?
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
                    .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                Circle()
                    .fill(Color.red.opacity(0))
                    .frame(width: 70, height: 70)
                    .overlay(Circle().stroke(colorScheme == .dark ? Color.black : Color.white, lineWidth: 5))
            }
            if let name = profileFavoriteName {
                Text(name)
            }
            else{
                Text("Yazı yok!")
            }
        }
    }
}

#Preview {
    ProfileFavorites()
}
