//
//  OtherProfilePageOtherPeopleFollow.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct OtherProfilePageOtherPeopleFollow: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        HStack{
            HStack(spacing: -12) { // Negatif spacing ile fotoğraflar üst üste binebilir
                Image("handsome")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(colorScheme == .dark ? Color.black : Color.white, lineWidth: 4))
                
                Image("handsome")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(colorScheme == .dark ? Color.black : Color.white, lineWidth: 4))
                
                Image("handsome")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(colorScheme == .dark ? Color.black : Color.white, lineWidth: 4))
            }
            Text("barisdemirci ")
                .bold()
                .foregroundColor(.primary) +
            Text("ve ")
                .foregroundColor(.secondary) +
            Text("diğer kişiler ")
                .bold()
                .foregroundColor(.primary) +
            Text("bu kişiyi takip ediyor.")
                .foregroundColor(.secondary)

        }
    }
}

#Preview {
    OtherProfilePageOtherPeopleFollow()
}
