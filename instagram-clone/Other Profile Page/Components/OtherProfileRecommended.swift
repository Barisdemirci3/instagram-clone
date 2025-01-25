//
//  OtherProfileRecommended.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct OtherProfileRecommended: View {
    var body: some View {
        VStack {
            HStack{
                Text("Senin için önerilenler")
                    .bold()
                Spacer()
                Text("Tümünü Gör")
                    .foregroundStyle(Color("mainbuttoncolor").opacity(1))
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    OtherProfileRecommended()
}
