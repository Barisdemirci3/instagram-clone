//
//  OtherProfilePrivacy.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct OtherProfilePrivacy: View {
    var body: some View {
        HStack{
            Image(systemName: "lock.circle")
                .resizable()
                .frame(width: 40, height: 40)
            VStack{
                Text("Bu Hesap Gizli")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.primary)
                Text("Fotoğraf ve videolarını görmek için bu hesabı takip et.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.secondary)// Sol tarafa
            }
        }
        .padding()
    }
}

#Preview {
    OtherProfilePrivacy()
}
